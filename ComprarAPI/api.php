<?php

require_once 'DatabaseRepository.php';

$acao = $_GET['acao'];

if($acao == 'listar') {
    echo json_encode(DatabaseRepository::getAllItems());
} else if($acao == 'adicionar') {
    echo DatabaseRepository::addItem();
} else if($acao == 'atualizar') {
    echo DatabaseRepository::updateItem();
}  else if($acao == 'deletar') {
    echo DatabaseRepository::deleteItem();
} else {
    echo "Ação não implementada";
}

?>