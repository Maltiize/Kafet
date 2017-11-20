<?php

namespace KafetBundle\Controller;

use KafetBundle\Entity\Decouvert;
use KafetBundle\Entity\PeriodeInactive;
use KafetBundle\Entity\Produits;
use KafetBundle\Form\AddProduitsType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\HttpFoundation\Session\Session;

use Symfony\Component\HttpFoundation\Request;

class ParameterController extends Controller
{

    /**
     * @Route("/Decouvert",name="editDecouvert")
     */
    public function editDecouvertAction(Request $request)
    {

        $decouvert = $this->getDoctrine()->getManager()->getRepository('KafetBundle:Decouvert')
            ->findOneBy(array('idbis'=>0));
        $refresh = true;

        if(!isset($decouvert)){
            $decouvert = new Decouvert();
        } else{
            $refresh = false ;
        }
        $form = $this->createFormBuilder($decouvert)
            ->add('montant',NumberType::class)
            ->add('Submit',SubmitType::class,array(
                'label'=>'Enregistrer le decouvert max',
                'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')))
            ->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            if($form['montant']->getData()>0)
                return $this->render('Parameter/editDecouvert.html.twig',array(
                    'form'=>$form->createView(),
                    'errorTwig' => 'Le montant ne peut être positif'));


            $em = $this->getDoctrine()->getManager();
            $em->persist($decouvert);
            $em->flush();
            $session = new Session();
            $session->set('msg','Le montant max de découvert a bien été modifié');
            return $this->redirectToRoute('indexClients');
        }
        if($refresh){
            $em = $this->getDoctrine()->getManager();
            $em->persist($decouvert);
            $em->flush();
        }

        return $this->render('Parameter/editDecouvert.html.twig',array('form'=>$form->createView()));
    }

    /**
     * @Route("/PeriodeInactive",name="editPeriodeInactive")
     */
    public function editInactivePeriodeAction(Request $request)
    {

        $periode = $this->getDoctrine()->getManager()->getRepository('KafetBundle:PeriodeInactive')
            ->findOneBy(array('idbis'=>0));
        $refresh = true;
        if(!isset($periode)){
            $periode = new PeriodeInactive();
        }
        else{
            $refresh = false ;
        }

        $form = $this->createFormBuilder($periode)
            ->add('annee',NumberType::class)
            ->add('mois',NumberType::class)
            ->add('jours',NumberType::class)

            ->add('Submit',SubmitType::class,array(
                'label'=>'Enregistrer la période d\'inactivité',
                'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')))
            ->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            if($form['annee']->getData()<0 ||
                $form['mois']->getData()<0 ||
                $form['jours']->getData()<0 )
                return $this->render('Parameter/editPeriodeInactivite.html.twig',array(
                    'form'=>$form->createView(),
                    'errorTwig' => 'Les valeurs ne peuvent être négatives'));


            $em = $this->getDoctrine()->getManager();
            $em->persist($periode);
            $em->flush();
            $session = new Session();
            $session->set('msg','La période d\'inactivité a bien été modifié');
            return $this->redirectToRoute('indexClients');
        }
        if($refresh){
            $em = $this->getDoctrine()->getManager();
            $em->persist($periode);
            $em->flush();
        }

        return $this->render('Parameter/editPeriodeInactivite.html.twig',array('form'=>$form->createView()));
    }


}
