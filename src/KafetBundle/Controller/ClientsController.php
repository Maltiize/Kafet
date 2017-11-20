<?php

namespace KafetBundle\Controller;

use KafetBundle\Entity\Decouvert;
use KafetBundle\Entity\Recharges;
use KafetBundle\Entity\Transactions;
use KafetBundle\Form\AddClientsType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use KafetBundle\Entity\Clients;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Validator\Constraints\Choice;

class ClientsController extends Controller
{
    /**
     * @Route("/",name="indexClients")
     * @Route("/Client",name="indexClients")
     */
    public function indexClientsAction()
    {
        $msg = null;
        $session = new Session();
        $msg = $session->get('msg');
        $session->remove('msg');
        $directory = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Clients");
        $clients = $directory->findBy(array(), array('id' => 'DESC'));
        $totalcompte = 0 ;
        foreach($clients as $val){
            $totalcompte += $val->getSolde();

            if(strcmp($val->getDepartement(),'Diplome')==0 || strcmp($val->getDepartement(),'Personnel')==0)
                $val->dep = $val->getDepartement();
            else
                $val->dep = $val->getDepartement().$val->getAnnee();
        }
        return $this->render('Clients/indexClients.html.twig',array('clients'=>$clients,'total'=>$totalcompte,'msg'=>$msg));
    }

    /**
     * @Route("/Client/View/{id}",name="viewClient")
     */
    public function viewClientAction($id)
    {
        if(!isset($id))
            return $this->redirectToRoute('indexClients');
        $client = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Clients")->find($id);
        if(!isset($client))
            return $this->redirectToRoute('indexClients');

        $client->date = date_format($client->getCreatedAt(), 'd/m/Y H:i:s');
        $transactions = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Transactions")
            ->findBy(array('client'=>$client));
        foreach($transactions as $val){
            $val->produitNom = $val->getProduit()->getNom();
            $val->produitPrix = $val->getProduit()->getPrix();
            $val->date = date_format($val->getCreatedAt(), 'd/m/Y H:i:s');
            $val->crea = $val->getCreator()->getNom().'  '.$val->getCreator()->getPrenom();

        }

        $recharges = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Recharges")
            ->findBy(array('client'=>$client));

        foreach($recharges as $val){
            $val->date = date_format($val->getCreatedAt(), 'd/m/Y H:i:s');
            $val->crea = $val->getCreator()->getNom().'  '.$val->getCreator()->getPrenom();
        }


        return $this->render('Clients/viewClients.html.twig',array(
            'client'=>$client,
            'transactions'=>$transactions,
            'recharges'=>$recharges
        ));
    }





    /**
     * @Route("/Client/Add",name="addClient")
     * @Route("/Client/Edit/{id}",name="editClient")
     */
    public function addClientsAction(Request $request,$id=null)
    {
        $client = new Clients();
        if(isset($id))
            $client = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Clients')->find($id);
        $form = $this->createForm(AddClientsType::class, $client);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            if(( strcmp($form["departement"]->getData(),"Diplome")== 0 ||
                strcmp($form["departement"]->getData(),"Personnel")== 0 ||
                strcmp($form["departement"]->getData(),"PEIP")== 0 && $form["annee"]->getData() <= 2) ||
                (strcmp($form["departement"]->getData(),"PEIP")!= 0 && $form["annee"]->getData() > 2)){

                if(strcmp($form["departement"]->getData(),"Diplome")== 0 ||
                    strcmp($form["departement"]->getData(),"Personnel")== 0 )
                    $client->setAnnee(-1);

                $client->setCreator($this->getUser()->getNom().' '.$this->getUser()->getPrenom());
                $em = $this->getDoctrine()->getManager();
                $em->persist($client);
                $em->flush();
                $session = new Session();
                $session->set('msg','Le nouveau client a bien été crée');
                return $this->redirectToRoute('indexClients');
            }
            else{
                return $this->render('Clients/addClients.html.twig',array('form'=>$form->createView(),
                    'errorTwig'=>'Attention : L\'année rentrée ne correspond pas à la promotion'));
            }


        }
        return $this->render('Clients/addClients.html.twig',array('form'=>$form->createView()));
    }

    /**
     * @Route("/Client/Delete/{id}",name="deleteClient")
     */
    public function deleteClientAction(Request $request,$id)
    {
        $directory = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Clients");
        $client = $directory->find($id);
        if(!isset($client))
            return $this->redirectToRoute('indexProduits');
        $form = $this->createFormBuilder()
            ->add('Submit',SubmitType::class,array('label'=>'Confirmer la suppression',
                'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')))
            ->getForm();
        $form->handleRequest($request);
        if($form->isSubmitted()){
            $em = $this->getDoctrine()->getManager();
            $em->remove($client);
            $em->flush();
            $session = new Session();
            $session->set('msg','Le Client a bien été supprimé');
            return $this->redirectToRoute('indexClients');
        }
        return $this->render('Misc/validationDelete.html.twig',array('form'=>$form->createView(),
            'type'=>'Client',
            'nom'=> $client->getNom().'  '.$client->getPrenom()));
    }

    function getRewriteString($sString) {
        //Conversion des majuscules en minuscule
        $string = strtolower(htmlentities($sString));
        //Listez ici tous les balises HTML que vous pourriez rencontrer
        $string = preg_replace("/&(.)(acute|cedil|circ|ring|tilde|uml|grave);/", "$1", $string);
        //Tout ce qui n'est pas caractère alphanumérique  -> _

        return $string;
    }

    /**
     * @Route("/Client/Profile/{id}",name="profilClient")
     */
    public function profilClientAction(Request $request,$id)
    {

        if(!isset($id))
            return $this->redirectToRoute('indexClients');

        $defaultClient = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Clients")->find($id);

        if(!isset($defaultClient))
            return $this->redirectToRoute('indexClients');

        $clientsrep = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Clients');
        $clients = $clientsrep->findall();
        $produitsrep = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Produits');
        $produits = $produitsrep->findall();

        $formbuilder = $this->createFormBuilder();
        $choices = array();
        foreach($clients as $val ){
            $choices[$val->getId().'  '.$val->getNom().'  '.$val->getPrenom().' | Solde :'.$val->getSolde().'€']
                =$val->getId();
        }

        if(isset($defaultClient))
            $formbuilder->add("Clients",ChoiceType::class,array('choices'=>$choices,
                'preferred_choices'=>[$defaultClient->getId()]));
        else
            $formbuilder->add("Clients",ChoiceType::class,array('choices'=>$choices));


        $formbuilder->add('Recharge',NumberType::class,array('data' => 0,'label_attr' => array('id' => 'recharge'),'attr'=>array('class' =>'testt')));

        foreach($produits as $val)
            $formbuilder->add($val->getId(),NumberType::class,array('data'=>0,'label'=>$val->getNom().' '.$val->getPrix().' €'));


        $formbuilder->add("Submit",SubmitType::class,array('label' => 'Valider la transaction',
            'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')));
        $form = $formbuilder->getForm();


        $defaultClient->date = date_format($defaultClient->getCreatedAt(), 'd/m/Y H:i:s');

        $transactions = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Transactions")
            ->findBy(array('client'=>$defaultClient));


        foreach($transactions as $val){
            $val->produitNom = $val->getProduit()->getNom();
            $val->produitPrix = $val->getProduit()->getPrix();
            $val->date = date_format($val->getCreatedAt(), 'd/m/Y H:i:s');
            $val->crea = $val->getCreator()->getNom().'  '.$val->getCreator()->getPrenom();

        }

        $recharges = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Recharges")
            ->findBy(array('client'=>$defaultClient));

        foreach($recharges as $val){
            $val->date = date_format($val->getCreatedAt(), 'd/m/Y H:i:s');
            $val->crea = $val->getCreator()->getNom().'  '.$val->getCreator()->getPrenom();
        }

        $form->handleRequest($request);
        if($form->isSubmitted()){
            $total =  array();
            $sum = 0;
            $em = $this->getDoctrine()->getManager();

            $decouvert = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Decouvert')
                ->findOneBy(array('idbis'=>0));

            if (!isset($decouvert)) {
                $decouvert = new Decouvert();
                $em->persist($decouvert);
            }


            if( $form['Recharge']->getData()>0){

                $recharge = new Recharges();
                $recharge->setClient($defaultClient);
                $recharge->setMontant($form['Recharge']->getData());

                $defaultClient->setSolde($defaultClient->getSolde() + $form['Recharge']->getData());
                $recharge->setCreator($this->getUser());
                $em->persist($defaultClient);
                $em->persist($recharge);

            }

            foreach($produits as $val){

                if($form[$val->getId()]->getData() > 0){
                    $tr = new Transactions();
                    $tr->setProduit($val);
                    $tr->setQtt($form[$val->getId()]->getData());
                    $tr->setCreator($this->getUser());
                    $tr->setClient($defaultClient);
                    $total[]=$tr;
                    $sum += $form[$val->getId()]->getData()*$val->getPrix();
                }

            }

            if ($defaultClient->getSolde() - $sum < $decouvert->getMontant() ) {

                $em->clear();

                return $this->render('Clients/profilClients.html.twig', array(
                    'form' => $form->createView(),
                    'client'=>$defaultClient,
                    'transactions'=>$transactions,
                    'recharges'=>$recharges,
                    'errorTwig' => 'Le compte ne peut être débité à cause de la limite du decouvert'));
            }
            foreach($total as $value){
                $em->persist($value);
            }
            $defaultClient->setSolde($defaultClient->getSolde() - $sum);
            $em->persist($defaultClient);
            $em->flush();


            return $this->render('Clients/redirectClientProfil.html.twig',array('pth'=>'profilClient','id' => $id ));
        }






        return $this->render('Clients/profilClients.html.twig',array(
            'form' => $form->createView(),
            'client'=>$defaultClient,
            'transactions'=>$transactions,
            'recharges'=>$recharges
        ));


    }



    /**
     * @Route("/Client/Transaction/Add",name="addtransactionClient")
     * @Route("/Client/Transaction/Add/{id}",name="addtransactionClient")
     */
    public function transactionClientAddAction(Request $request,$id=null)
    {

        if(isset($id)){
            $defaultClient= $this->getDoctrine()->getManager()->getRepository('KafetBundle:Clients')->find($id);
        }
        $clientsrep = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Clients');
        $clients = $clientsrep->findall();
        $produitsrep = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Produits');
        $produits = $produitsrep->findall();

        $formbuilder = $this->createFormBuilder();
        $choices = array();
        foreach($clients as $val ){
            $choices[$val->getId().'  '.$val->getNom().'  '.$val->getPrenom().' | Solde :'.$val->getSolde().'€']
                =$val->getId();
        }
        if(isset($defaultClient))
            $formbuilder->add("Clients",ChoiceType::class,array('choices'=>$choices,
                'preferred_choices'=>[$defaultClient->getId()]));
        else
            $formbuilder->add("Clients",ChoiceType::class,array('choices'=>$choices));


        $choices = array();
        foreach($produits as $val ){
            $choices[$val->getNom().' Prix : '.$val->getPrix().' € ']=$val->getId();
        }
        $formbuilder->add("Produits",ChoiceType::class,array('choices'=>$choices));
        $formbuilder->add('Quantite',NumberType::class);
        $formbuilder->add("Submit",SubmitType::class,array('label' => 'Valider la transaction',
            'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')));
        $form = $formbuilder->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){

            $em = $this->getDoctrine()->getManager();


            $transaction = new Transactions();
            $client = $clientsrep->find($form['Clients']->getData());
            $produit = $produitsrep->find($form['Produits']->getData());
            $qtt = $form['Quantite']->getData();
            $transaction->setClient($client);
            $transaction->setProduit($produit);
            $transaction->setQtt($qtt);
            $decouvert = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Decouvert')
                ->findOneBy(array('idbis'=>0));
            if(!isset($decouvert)){
                $decouvert = new Decouvert();
                $em->persist($decouvert);
            }
            if($client->getSolde() - $produit->getPrix()*$qtt<$decouvert->getMontant()){
                $em->flush();
                return $this->render('Clients/addClientsTransaction.html.twig',array(
                    'form'=>$form->createView(),
                    'errorTwig' => 'Le compte ne peut être débité à cause de la limite du decouvert'));
            }

            $client->setSolde($client->getSolde() - $produit->getPrix()*$qtt);
            $transaction->setCreator($this->getUser());

            $em->persist($client);
            $em->persist($transaction);
            $em->flush();
            return $this->render('Clients/addClientsTransaction.html.twig',array(
                'form'=>$form->createView(),
                'msg' => 'Le compte a bien été débité'));
        }
        return $this->render('Clients/addClientsTransaction.html.twig',array(
            'form'=>$form->createView()));
    }

    /**
     * @Route("/Client/Transaction/View/{id}",name="viewtransactionClient")
     */
    public function transactionClientViewAction(Request $request,$id)
    {
        $directoryClient = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Clients");
        $directoryTransaction = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Transactions");
        $client = $directoryClient->find($id);
        if(!isset($client)){
            $this->redirectToRoute("indexClients");
        }
        $transactions = $directoryTransaction->findBy(array('client' => $client));
        foreach($transactions as $val){
            $val->produitNom = $val->getProduit()->getNom();
            $val->produitPrix = $val->getProduit()->getPrix();
            $val->date = date_format($val->getCreatedAt(), 'd/m/Y H:i:s');

        }
        $strClient = $val->clientName = $client->getNom().'  '.$client->getPrenom();


        return $this->render('Clients/viewClientsTransaction.html.twig',array(
            'transactions'=>$transactions,
            'client'=>$strClient));
    }

    /**
     * @Route("/Client/Recharge",name="rechargeClient")
     * @Route("/Client/Recharge/{id}",name="rechargeClient")
     */
    public function rechargeClientAction(Request $request,$id=null)
    {
        $clientsrep = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Clients');
        if(isset($id)){
            $defaultClient = $clientsrep->find($id);
        }

        $clients = $clientsrep->findall();
        $formbuilder = $this->createFormBuilder();
        $choices = array();
        foreach($clients as $val ){
            $choices[$val->getId().'  '.$val->getNom().'  '.$val->getPrenom()]=$val->getId();
        }

        if(isset($defaultClient))
            $formbuilder->add("Clients",ChoiceType::class,
                array('choices'=>$choices,'preferred_choices'=>[$defaultClient->getId()]));
        else
            $formbuilder->add("Clients",ChoiceType::class,
                array('choices'=>$choices));

        $formbuilder->add('Montant',NumberType::class)
                    ->add("Submit",SubmitType::class,array('label' => 'Valider la recharge',
            'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')));
        $form = $formbuilder->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            if( $form['Montant']->getData()<0)
                return $this->render('Clients/rechargeClients.html.twig',array('form'=>$form->createView(),
                'errorTwig'=>'Attention : Le montant rentré est négatif'));

            $recharge = new Recharges();
            $client = $clientsrep->find($form['Clients']->getData());
            $recharge->setClient($client);
            $recharge->setMontant($form['Montant']->getData());
            $client->setSolde($client->getSolde() + $form['Montant']->getData());
            $recharge->setCreator($this->getUser());
            $em = $this->getDoctrine()->getManager();
            $em->persist($client);
            $em->persist($recharge);
            $em->flush();
            $session = new Session();
            $session->set('msg','Le compte a bien été réapprivisionné ');
            return $this->redirectToRoute('indexClients');
        }
        return $this->render('Clients/rechargeClients.html.twig',array('form'=>$form->createView()));
    }


    /**
     * @Route("/Client/Search",name="searchClients")
     */
    public function searchClientAction(Request $request)
    {

        $form = $this->createFormBuilder()
           ->add('SoldeMinimum',NumberType::class,array('required'=>false))
           ->add('SoldeMaximum',NumberType::class,array('required'=>false))
            ->add('Nom',TextType::class,array('required'=>false))
            ->add('Prenom',TextType::class,array('required'=>false))

            ->add('Specialite',ChoiceType::class,array('choices'=>array(
               'PEIP' => 'PEIP',
               'INFO' => 'INFO',
               'TE' => 'TE',
               'ETN' => 'ETN',
               'Diplome' => 'Diplome',
               'Personnel' => 'Personnel'
           ),'required'=>false))
           ->add('Annee',ChoiceType::class,array('choices'=>array(
               '1' => 1,
               '2' => 2,
               '3' => 3,
               '4' => 4,
               '5' => 5
           ),'required'=>false))
           ->add('Sumbmit', SubmitType::class,array(
               'label'=>'Rechercher',
               'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')
           ))
           ->getForm();
        $em = $this->getDoctrine()->getEntityManager();
        $session = new Session();
        /*
        $strQuery =  $session->get('requeteDQL');
        if(isset($strQuery)){
            $result = $em->createQuery($strQuery)->getResult();
            foreach($result as $val){

                if(strcmp($val->getDepartement(),'Diplome')==0 || strcmp($val->getDepartement(),'Personnel')==0)
                    $val->dep = $val->getDepartement();
                else
                    $val->dep = $val->getDepartement().$val->getAnnee();
            }
            return $this->render('Clients/searchClientsResult.html.twig',array('clients'=>$result));

        }*/
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid() ){

            $strQuery = 'select c from KafetBundle:Clients c';
            $option = array();
            $formData = $form['SoldeMinimum']->getData();
            if(isset($formData)){
                $option[] =' c.solde>='.$formData;
            }
            $formData = $form['SoldeMaximum']->getData();
            if(isset($formData)){
                $option[]=' c.solde<='.$formData;
            }
            $formData = $form['Specialite']->getData();
            if(isset($formData)){
                $option[]=' c.departement=\''.$formData.'\'';
            }
            $formData = $form['Annee']->getData();
            if(isset($formData)){
                $option[]=' c.annee='.$formData;
            }
            $formData = $form['Nom']->getData();
            if(isset($formData)){
                $option[]=' c.nom=\''.$formData.'\'';
            }
            $formData = $form['Prenom']->getData();
            if(isset($formData)){
                $option[]=' c.prenom=\''.$formData.'\'';
            }
           if(count($option)>0){
               $strQuery.=' where '.$option[0];
               for($i = 1;$i<count($option);$i++)
                   $strQuery.='and'.$option[$i];
           }

           $result = $em->createQuery($strQuery)->getResult();
            foreach($result as $val){

                if(strcmp($val->getDepartement(),'Diplome')==0 || strcmp($val->getDepartement(),'Personnel')==0)
                    $val->dep = $val->getDepartement();
                else
                    $val->dep = $val->getDepartement().$val->getAnnee();
            }
            $session->set('requeteDQL', $strQuery);
            return $this->render('Clients/searchClientsResult.html.twig',array('clients'=>$result));
        }

        return $this->render('Clients/searchClients.html.twig',array('form'=>$form->createView()));
    }
    /**
     * @Route("/Client/QuickSearch",name="quickSearchClients")
     */
    public function quickSearchClientAction()
    {

        $Str = $_POST['Str'];
        if(!isset($Str))
            return $this->render('Clients/indexClients.html.twig',array(
                'msg' => 'Données Invalides'));

        $strQuery = 'select c from KafetBundle:Clients c where c.nom LIKE \'%'.$Str.'%\' or c.prenom LIKE \'%'.$Str.'%\' ';
        $session = new Session();
        $em = $this->getDoctrine()->getEntityManager();
        $result = $em->createQuery($strQuery)->getResult();
        foreach($result as $val){
            if(strcmp($val->getDepartement(),'Diplome')==0 || strcmp($val->getDepartement(),'Personnel')==0)
                $val->dep = $val->getDepartement();
            else
                $val->dep = $val->getDepartement().$val->getAnnee();
        }
        $session->set('requeteDQL', $strQuery);
        return $this->render('Clients/searchClientsResult.html.twig',array('clients'=>$result));




    }


    /**
     * @Route("/Client/Incremental",name="incrementalClients")
     */
    public function incrementalClientsAction(Request $request)
    {
        $form = $this->createFormBuilder()
            ->add('Submit',SubmitType::class,array('label'=>'Confirmer l\'action',
                'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')))
            ->getForm();

        $form->handleRequest($request);
        $em=$this->getDoctrine()->getManager();
        if($form->isSubmitted()){

            $clients = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Clients')->findAll();
            foreach($clients as $val){
                if($val->getAnnee()>=5){
                    $val->setAnnee(-1);
                    $val->setDepartement('Diplome');
                }
                elseif(!(strcmp($val->getDepartement(),'PEIP')==0 && $val->getAnnee()==2)){
                    $val->setAnnee($val->getAnnee()+1);
                }


                if(strcmp($val->getDepartement(),'Diplome')==0 || strcmp($val->getDepartement(),'Personnel')==0 )
                    $val->setAnnee(-1);

                $em->persist($val);

            }
            $em->flush();
            $session = new Session();
            $session->set('msg',"L'année a bien été incrémentée pour tout les compte sauf PEIP2 INFO5 Diplome et Personnel");
            return $this->redirectToRoute('indexClients');

        }
        return $this->render('Misc/validationIncremental.html.twig',array('form'=>$form->createView()));
    }

    /**
     *
     * @Route("/Client/Inactif",name="inactifClients")
     */
    public function inactifClientsAction()
    {

        $directoryClient = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Clients");
        $directoryTransactions = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Transactions");
        $directoryRecharge = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Recharges");
        $periode = $this->getDoctrine()->getManager()->getRepository("KafetBundle:PeriodeInactive")
            ->findOneBy(array('idbis'=>0));
        $timesec = $periode->getAnnee()*31536000+$periode->getMois()*2635200+$periode->getJours()*86400;
        // un jour = 86400
        // un mois = 2 635 200
        // un an = 31536000
        $clients = $directoryClient->findAll();
        $totalcompte = 0 ;
        foreach($clients as $val){
            $totalcompte += $val->getSolde();

            if(strcmp($val->getDepartement(),'Diplome')==0 || strcmp($val->getDepartement(),'Personnel')==0)
                $val->dep = $val->getDepartement();
            else
                $val->dep = $val->getDepartement().$val->getAnnee();
        }
        return $this->render('Clients/indexClients.html.twig',array('clients'=>$clients,'total'=>$totalcompte));
    }
    /**
     *
     * @Route("/Client/Search/Delete",name="searchDelete")
     */
    public function searchDeleteAction(Request $requete)
    {
        $session = new Session();
        $strQuery = $session->get('requeteDQL');
        if(!isset($strQuery))
           return $this->redirectToRoute('searchClients');
        $em = $this->getDoctrine()->getManager();
        $clients = $em->createQuery($strQuery)->getResult();
        $form = $this->createFormBuilder()
            ->add('Submit', SubmitType::class,array('label'=>'Supprimer la selection',
                'attr'=>array('class'=>'btn btn-default')))
            ->getForm();
        $form->handleRequest($requete);
        $form->createView();
        if($form->isSubmitted()){
            foreach($clients as $val)
                $em->remove($val);
            $em->flush();
            $session->set('msg','Les comptes ont bien été supprimés');
            $session->remove('requeteDQL');
            return $this->redirectToRoute('indexClients');
        }
        return $this->render("Misc/validationSearchDelete.html.twig",
            array('form'=>$form->createView(),'clients'=>$clients));

    }

    /**
     *
     * @Route("/APropos",name="aPrpopos")
     */
    public function aPrpoposAction()
    {
        return $this->render('Misc/Apropos.html.twig');
    }

}
