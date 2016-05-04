<?php

require_once "php/model/persist/DBConnect.php";

class LoginADO {
    //properties
    private $dbConnection;
    
    //constructor
    public function __construct() {
        $this->dbConnection = DBConnect::getInstance();
    }
    
    //methods
    public function getUser($user) {
        $sql = "SELECT * FROM user WHERE userName = ? AND password = ?";
        $query = $this->dbConnection->execute($sql, [$user->getUserName(), $user->getPassword()]);
        if ($query != null) {
            return $query->fetch();
        }
        return null;
    }
}
