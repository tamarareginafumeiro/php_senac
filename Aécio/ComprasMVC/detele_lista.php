<?php
require_once 'DatabaseRepository.php';

$id = $_GET['id'];
DatabaseRepository::deleteItem($id);
header('Location: lista_compra.php');
exit;