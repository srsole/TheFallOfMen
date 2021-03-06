<!DOCTYPE html>
<?php
//includes
//session control
session_start();

if (!isset($_SESSION["user"])) {
    header("Location:index.php?error=2");
}

if (isset($_GET["logOut"])) {
    session_destroy();
    Header("Location: index.php");
}
?>
<html ng-app="fallOfMenApp">
    <head>
        <title>The fall of men - Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--FRAMEWORKS-->
        <script src="js/frameWorks/jQuery/jquery-2.2.3.min.js" type="text/javascript"></script>
        <script src="js/frameWorks/angular/angular.min.js" type="text/javascript"></script>
        <script src="js/frameWorks/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/frameWorks/jquery-ui-1.12.0-rc.2/jquery-ui.min.js" type="text/javascript"></script>

        <!--STYLE-->
        <link href="css/LoginStyle.css" rel="stylesheet" type="text/css"/>
        <link href="js/frameWorks/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/homeStyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/generalStyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/hangarStyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/shopStyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/profileStyle.css" rel="stylesheet" type="text/css"/>
        <link href="js/frameWorks/jquery-ui-1.12.0-rc.2/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
        
        <!--CONTROL-->
        <script src="js/control/MainWindow.js" type="text/javascript"></script>
    </head>
    <body ng-controller="controller as ctrl" class="background">
        <header class="menuBar row">
            <a href="mainWindow.php?logOut=1" class="menuButton btn btn-danger">LOGOUT</a>
            <button class="menuButton btn btn-primary" ng-click="currentWindow = 'home'">HOME</button>
            <button class="menuButton btn btn-primary" ng-click="currentWindow = 'hangar'">HANGAR</button>
            <button class="menuButton btn btn-primary" ng-click="currentWindow = 'shop'">SHOP</button>
            <button class="menuButton btn btn-primary" ng-click="currentWindow = 'profile'">PROFILE</button>
        </header>
        <!--para mayor rapidez hacemos todos los menus en una misma pagina, asi mismo podremos hacer un efecto slider-->
        <!--esto sera la pestaña de home -->
        <home-template></home-template>
        <!--esto sera la pestaña de  hangar-->
        <hangar-template></hangar-template>
        <!--esto sera la pestaña de home -->
        <shop-template></shop-template>
        <!--esto sera la pestaña de home -->
        <main ng-show="currentWindow == 'profile'">
            <div class="row">
                <profile-template></profile-template>
                <statistic-template></statistic-template>
            </div>
        </main>
    </body>
</html>
