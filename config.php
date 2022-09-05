<?php 
    spl_autoload_register(function($class){
        $classpath =  $_SERVER['DOCUMENT_ROOT'].DIRECTORY_SEPARATOR."dabar/class".DIRECTORY_SEPARATOR."$class.php";
        if(file_exists($classpath)){
            require_once $classpath;
        }
    });
?>