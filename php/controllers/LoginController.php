<?php

require_once "php/controllers/ControllerInterface.php";
require_once "php/model/persist/DBConnect.php";
require_once "php/model/User.php";
require_once "php/model/persist/LoginADO.php";

class LoginController implements ControllerInterface {

    //properties  
    private $ado;

    //constructor 
    public function __construct() {
        $this->ado = new LoginADO();
    }

    //methods
    /**
     * @name run()
     * @author JuanFran
     * @version 1.0
     * @date 02/05/2016
     * @description main controller run method
     */
    public function run() {

        if (isset($_POST["loginButton"])) {
            $userName = $_POST["userNameBox"];
            $userPass = md5($_POST["passBox"]);
            $loginUser = new User($userName, $userPass);
            $foundUser = $this->ado->getUser($loginUser);
            if ($foundUser != null) {
                //if user is found, create a user object with data from database
                $loginUser->setCoins($foundUser["coins"]);
                $loginUser->setUserType($foundUser["userType"]);
                $loginUser->setCoins($foundUser["coins"]);
                $loginUser->setIdProfile($foundUser["idProfile"]);
                $loginUser->setIdUserStatistic($foundUser["idUserStatistic"]);
                $loginUser->setIdRobotStatistic($foundUser["idRobotStatistic"]);
                //save user object in session variable
                $_SESSION["user"] = $loginUser;
                header("Location: mainWindow.php");
            } else {
                header("Location: index.php?error=1");
            }
        }
    }

}
