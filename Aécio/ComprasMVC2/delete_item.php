<?php
// Me conectar ao banco de dados
require_once 'DatabaseRepository.php';

$id = $_GET['id'];

DatabaseRepository::deleteItem($id);
header('Location: lista_items.php');
exit;
?>