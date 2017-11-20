<?php
/**
 * Created by PhpStorm.
 * User: La Patate Démoniaque
 * Date: 19/09/2016
 * Time: 14:07
 */

// src/AppBundle/Entity/Author.php
namespace KafetBundle\Entity;

use Symfony\Component\Validator\Constraints as Assert;
use Doctrine\ORM\Mapping as ORM;


/**
 * @ORM\Entity
 * @ORM\Table(name="decouvert")
 */
class Decouvert
{

    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;


    /**
     * @var integer $montant
     *
     * @ORM\Column(name="montant", type="integer")
     *
     */
    private $montant=-10;


    /**
     * @var integer $idbis
     *
     * @ORM\Column(name="idbis", type="integer")
     *
     */
    private $idbis=0;


    /**
     * @return int
     */
    public function getMontant()
    {
        return $this->montant;
    }

    /**
     * @param int $montant
     */
    public function setMontant($montant)
    {
        $this->montant = $montant;
    }

    /**
     * @return int
     */
    public function getIdbis()
    {
        return $this->idbis;
    }



    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }





}