<?php

$dados ['categorias'] = ['Balão Mágico','Carros de corrida','Bonecas','Cartéado', 'Tabuleiro'];

echo '<pre>';
echo json_encode($dados, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);


echo '<hr>'; 

$json = '["Balão Mágico","Carros de corrida","Bonecas","Cartéado", "Tabuleiro"]';

$categorias = json_decode($json);
echo '<pre>';
print_r($categorias);