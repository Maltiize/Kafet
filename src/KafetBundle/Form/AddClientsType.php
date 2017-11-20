<?php
/**
 * Created by PhpStorm.
 * User: La Patate Démoniaque
 * Date: 18/05/2016
 * Time: 12:02
 */

namespace KafetBundle\Form;

use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class AddClientsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', TextType::class)
            ->add('prenom', TextType::class)
            ->add('solde', NumberType::class,array('attr' => array('value'=>'0')))
            ->add('email', EmailType::class)
            ->add('numero' , TextType::class)
            ->add('departement',ChoiceType::class, array('choices'=>array(
                'PEIP' => 'PEIP',
                'INFO' => 'INFO',
                'TE' => 'TE',
                'ETN' => 'ETN',
                'Diplome' => 'Diplome',
                'Personnel' => 'Personnel'
            )))
            ->add('annee',ChoiceType::class, array('choices'=>array(
                '1' => 1,
                '2' => 2,
                '3' => 3,
                '4' => 4,
                '5' => 5
            )))
            ->add('submit', SubmitType::class, array('label' => 'Enregistrer le client','attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')))
        ;
    }


    public function getName()
    {
        return 'addclientstype';
    }
}

