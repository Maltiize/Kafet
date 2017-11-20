<?php
/**
 * Created by PhpStorm.
 * User: La Patate Démoniaque
 * Date: 19/09/2016
 * Time: 18:08
 */


namespace KafetBundle\Controller;

use KafetBundle\Entity\Recharges;
use KafetBundle\Entity\Transactions;
use KafetBundle\Form\AddClientsType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use KafetBundle\Entity\Clients;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Validator\Constraints\Choice;

class UserController extends Controller
{

    /**
     * @Route("/User",name="indexUser")
     */
    public function indexProduitsAction()
    {
        $msg = null;
        $session = new Session();
        $msg = $session->get('msg');
        $session->remove('msg');
        $directory = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Compte");
        $comptes = $directory->findAll();
        foreach($comptes as $val){
            $val->date = date_format($val->getLastLogin(), 'd/m/Y H:i:s');
            if(in_array('ROLE_ADMIN',$val->getRoles()))
                $val->role = 'Admin';
            else
                $val->role = 'User';
        }
        return $this->render('User/indexUser.html.twig',array('comptes'=>$comptes,'msg'=>$msg));
    }

    /**
     * @Route("/User/Delete/{id}",name="deleteUser")
     */
    public function deleteUserAction(Request $request,$id)
    {
        $directory = $this->getDoctrine()->getManager()->getRepository("KafetBundle:Compte");
        $user = $directory->find($id);
        if(!isset($user))
            return $this->redirectToRoute('indexUser');
        $form = $this->createFormBuilder()
            ->add('Submit',SubmitType::class,array('label'=>'Confirmer la suppression',
                'attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')))
            ->getForm();
        $form->handleRequest($request);
        if($form->isSubmitted()){
            if(in_array('ROLE_ADMIN',$user->getRoles()))
                return $this->render('Misc/validationDelete.html.twig',array(
                    'form'=>$form->createView(),
                    'errorTwig'=>'Un compte Admin ne peut être supprimé'
                ));

            $em = $this->getDoctrine()->getManager();
            $em->remove($user);
            $em->flush();
            $session = new Session();
            $session->set('msg','Le compte utilisateur a bien été supprimé');
            return $this->redirectToRoute('indexUser');
        }
        return $this->render('Misc/validationDelete.html.twig',array('form'=>$form->createView(),
            'type'=>'Compte Utilisateur',
            'nom'=> $user->getNom()));
    }



}
