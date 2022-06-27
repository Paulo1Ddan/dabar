<form action="" method="post">
    <input type="tel" name="tel" id="">
    <input type="submit" value="Enviar">
</form>
<?php 
    if($_SERVER['REQUEST_METHOD'] === "POST"){
        $number = $_POST['tel'];
        if(str_contains($number, "(") && str_contains($number, ")") && str_contains($number, '-')){
            echo "foi";
        }else{
            echo "Não encontrado";
        }
/*         $result = sprintf("(%s) %s-%s",
                        substr($number, 0, 2),
                        substr($number, 3, 5),
                        substr($number, 7, 4)); */

    }
?>