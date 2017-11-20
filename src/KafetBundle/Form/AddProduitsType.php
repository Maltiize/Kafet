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

class AddProduitsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', TextType::class)
            ->add('prix', NumberType::class)
            ->add('submit', SubmitType::class, array('label' => 'Enregistrer le produit','attr'=>array('class'=>'btn btn-default spaced_text btnlabelform')))
        ;
    }


    public function getName()
    {
        return 'addproduitstype';
    }
}

