<?php

namespace KafetBundle\Controller;

use KafetBundle\Entity\Produits;
use KafetBundle\Form\AddProduitsType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\Session\Session;

use Symfony\Component\HttpFoundation\Request;

class ProduitsController extends Controller
{

    /**
     * @Route("/Produit",name="indexProduits")
     */
    public function indexProduitsAction()
    {
        $msg = null;
        $session = new Session();
        $msg = $session->get('msg');
        $session->remove('msg');

        $directory = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Produits");
        $produits = $directory->findAll();
        foreach($produits as $val)
            $val->date = date_format($val->getCreatedAt(), 'd/m/Y H:i:s');
        return $this->render('Produits/indexProduits.html.twig',array('produits'=>$produits,'msg'=>$msg));
    }

    /**
     * @Route("/Produit/Add",name="addProduits")
     * @Route("/Produit/Edit/{id}",name="editProduit")
     */
    public function addProduitAction(Request $request,$id=null)
    {
        $produit = new Produits();
        if(isset($id))
            $produit = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Produits')->find($id);
        $form = $this->createForm(AddProduitsType::class, $produit);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid() ){
            if( $form['prix']->getData()<0)
                return $this->render('Produits/addProduits.html.twig',array(
                    'form'=>$form->createView(),
                    'errorTwig'=>'Le prix du produit ne peut être négatif'
                ));

            $em = $this->getDoctrine()->getManager();
            $em->persist($produit);
            $em->flush();
            $session = new Session();
            $session->set('msg','Le produit a bien été crée/modifié');
            return $this->redirectToRoute('indexProduits');
        }
        return $this->render('Produits/addProduits.html.twig',array('form'=>$form->createView()));
    }

    /**
     * @Route("/Produit/Delete/{id}",name="deleteProduit")
     */
    public function deleteProduitAction(Request $request,$id)
    {
        $directory = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Produits");
        $produit = $directory->find($id);
        if(!isset($produit))
            return $this->redirectToRoute('indexProduits');
        $form = $this->createFormBuilder()
            ->add('Submit',SubmitType::class,array('label'=>'Confirmer la suppression',
            'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')))
            ->getForm();
        $form->handleRequest($request);
        if($form->isSubmitted()){
            $em = $this->getDoctrine()->getManager();
            $em->remove($produit);
            $em->flush();
            $session = new Session();
            $session->set('msg','Le produit a bien supprimé');
            return $this->redirectToRoute('indexProduits');
        }
        return $this->render('Misc/validationDelete.html.twig',array('form'=>$form->createView(),
            'type'=>'Produit',
            'nom'=> $produit->getNom()));
    }



}
