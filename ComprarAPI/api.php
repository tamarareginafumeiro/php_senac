<?php

require_once 'DatabaseRepository.php';

$acao = $_GET['acao'];

if($acao == 'dia') {
    echo "Hoje é dia de revisão!";
} else if($acao == 'api') {
    echo "Minha API funciona!";
} else {
    echo "Ação não implementada";
}

?>