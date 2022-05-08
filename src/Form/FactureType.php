<?php

namespace App\Form;

use App\Entity\Facture;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateType;

class FactureType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom')
            ->add('prenom')
            ->add('date', DateType::class, [
                'widget' => 'single_text',
                ])
            
            ->add('reglement')
            ->add('adresse')
            ->add('postal')
            ->add('ville')
            
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $this->date = new \DateTime('now');
        $resolver->setDefaults([
            'data_class' => Facture::class,
        ]);
        
    }
}
