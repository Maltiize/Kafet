<?php
/**
 * Created by PhpStorm.
 * User: La Patate Démoniaque
 * Date: 08/08/2016
 * Time: 19:25
 */

namespace KafetBundle\Entity;

use Doctrine\ORM\Mapping as ORM;


/**
 * @ORM\Entity
 * @ORM\Table(name="Recharges")
 */

class Recharges {
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @var float
     *
     * @ORM\Column(name="montant", type="float")
     */
    private $montant;



    /**
     * @ORM\ManyToOne(targetEntity="Clients")
     * @ORM\JoinColumn(name="Client", referencedColumnName="id",onDelete="CASCADE")
     */
    private $client;

    /**
     * @ORM\ManyToOne(targetEntity="Compte")
     * @ORM\JoinColumn(name="Creator", referencedColumnName="id",onDelete="CASCADE")
     */
    private $creator;


    /**
     * @ORM\Column(type="datetime")
     */
    protected $createdAt;



    // à rajouter quel user a fait quoi ?



    public function __construct()
    {
        $this->createdAt= new \DateTime();
    }

    /**
     * @return mixed
     */
    public function getClient()
    {
        return $this->client;
    }

    /**
     * @param mixed $client
     */
    public function setClient($client)
    {
        $this->client = $client;
    }

    /**
     * @return float
     */
    public function getMontant()
    {
        return $this->montant;
    }

    /**
     * @param float $montant
     */
    public function setMontant($montant)
    {
        $this->montant = $montant;
    }



    /**
     * @return mixed
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getCreator()
    {
        return $this->creator;
    }

    /**
     * @param mixed $creator
     */
    public function setCreator($creator)
    {
        $this->creator = $creator;
    }




}