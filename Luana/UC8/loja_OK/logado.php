<?php

//sessão para quem está

session_start();
$id_cliente = $_SESSION['id_cliente'];
$nome_cliente = $_SESSION['nome_cliente'];
if($id_cliente ==""){
    header('location:acesso.php');
}else{
 header('location:index.php');
}
?>
