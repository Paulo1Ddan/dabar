<?php 
    spl_autoload_register(function($nameClass){
        if(file_exists("$nameClass.php")){
            require_once("$nameClass.php");
        }
    });
?>