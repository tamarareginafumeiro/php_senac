<?php
// A função json_decode permite a operção contrária, ou seja partindo de um json, deixando a coleção operável em php.


$json = '["João", "Ana", "Carlos", "Martin"]';

$nome = json_decode($json);
echo '<pre>';
print_r($nome);

$json = '{"administrador": "João Robeiro",
    "secretaria": "Carla Santos",
    "diretor_geral": "Márcio Silva",
    "Oficial_contas": "Fernanda Correia"}';
$dados_empresa = json_decode($json, true);
print_r($dados_empresa);
