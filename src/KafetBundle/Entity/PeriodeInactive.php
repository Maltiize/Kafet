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
 * @ORM\Table(name="inactiveperiode")
 */
class PeriodeInactive
{

    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;


    /**
     * @var integer $annee
     *
     * @ORM\Column(name="annee", type="integer")
     *
     */
    private $annee=1;
    /**
     * @var integer $mois
     *
     * @ORM\Column(name="mois", type="integer")
     *
     */
    private $mois=0;
    /**
     * @var integer $jours
     *
     * @ORM\Column(name="jours", type="integer")
     *
     */
    private $jours=0;

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
    public function getAnnee()
    {
        return $this->annee;
    }

    /**
     * @param int $annee
     */
    public function setAnnee($annee)
    {
        $this->annee = $annee;
    }

    /**
     * @return int
     */
    public function getJours()
    {
        return $this->jours;
    }

    /**
     * @param int $jours
     */
    public function setJours($jours)
    {
        $this->jours = $jours;
    }

    /**
     * @return int
     */
    public function getMois()
    {
        return $this->mois;
    }

    /**
     * @param int $mois
     */
    public function setMois($mois)
    {
        $this->mois = $mois;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }





}