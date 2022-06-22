<form action="" method="post">
    <input type="tel" name="tel" id="">
    <input type="submit" value="Enviar">
</form>
<?php 
    if($_SERVER['REQUEST_METHOD'] === "POST"){
        $number = $_POST['tel'];
            echo("The original number is $number.\n");
            $result = sprintf("(%s) %s-%s",
                        substr($number, 0, 2),
                        substr($number, 3, 5),
                        substr($number, 7, 4));
            echo("The formatted number is $result.");
    }
?>