<?php
/**
 * @name Country()
 * @author Juan
 * @version 1.0
 * @date 02/05/216
 * @description encapsulates a country object
 */

class Country {
    //properties
    private $id;
    private $iso;
    private $name;
    
    //constructor
    function __construct($id, $iso, $name) {
        $this->id = $id;
        $this->iso = $iso;
        $this->name = $name;
    }
    
    //accessors
    public function getId() {
        return $this->id;
    }

    public function getIso() {
        return $this->iso;
    }

    public function getName() {
        return $this->name;
    }
    public function setId($id) {
        $this->id = $id;
    }

    public function setIso($iso) {
        $this->iso = $iso;
    }

    public function setName($name) {
        $this->name = $name;
    }




}
