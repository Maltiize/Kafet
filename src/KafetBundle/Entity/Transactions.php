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
 * @ORM\Table(name="Transactions")
 */

class Transactions {
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;


    /**
     * @ORM\ManyToOne(targetEntity="Produits")
     * @ORM\JoinColumn(name="Produit", referencedColumnName="id",onDelete="CASCADE")
     */
    private $produit;

    /**
     * @ORM\ManyToOne(targetEntity="Clients")
     * @ORM\JoinColumn(name="Client", referencedColumnName="id",onDelete="CASCADE")
     */
    private $client;


    /**
     * @ORM\Column(type="datetime")
     */
    protected $createdAt;

    /**
     * @ORM\ManyToOne(targetEntity="Compte")
     * @ORM\JoinColumn(name="Creator", referencedColumnName="id",onDelete="CASCADE")
     */
    private $creator;


    /**
     * @var integer
     *
     * @ORM\Column(name="qtt", type="integer",nullable=true)
     */
    private $qtt;





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
     * @return mixed
     */
    public function getProduit()
    {
        return $this->produit;
    }

    /**
     * @param mixed $produit
     */
    public function setProduit($produit)
    {
        $this->produit = $produit;
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

    /**
     * @return int
     */
    public function getQtt()
    {
        return $this->qtt;
    }

    /**
     * @param int $qtt
     */
    public function setQtt($qtt)
    {
        $this->qtt = $qtt;
    }




}