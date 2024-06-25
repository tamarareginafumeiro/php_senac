<?php
 echo "Atividade 1: Verificar se a soma de A + B é igual a C
     Solicita três números inteiros ao usuário (A, B e C) e verifica se a soma de A e B é igual a C.";
 
 $A = 5;
 $B = 10;
 $C = 15;


// Definição das variáveis
$A = 2;
$B = 10;
$C = 15;

// Verificação se a soma de A e B é igual a C
if ($A + $B == $C) {
    echo "A soma de A e B é igual a C.";
} else {
    echo "A soma de A e B não é igual a C.";
}
echo "<br>";
echo "<br>";
echo "Crie um programa que exiba a tabuada de multiplicação de um número fornecido pelo usuário.
    A tabuada deve ser exibida de 1 até 10.";

    echo "<br>";
$tabuada_numero = 8;

// Solução com o FOR

$tabuada_numero = 8;

// Exibição da tabuada utilizando um loop FOR
echo "Tabuada de multiplicação do número $tabuada_numero:\n";
for ($i = 1; $i <= 10; $i++) {
    $resultado = $tabuada_numero * $i;
    echo "$tabuada_numero x $i = $resultado\n";
}

// Solução com while
echo "<br>";
echo "<br>";
echo "Crie um programa que exiba a tabuada de multiplicação de um número fornecido pelo usuário.
    A tabuada deve ser exibida de 1 até 10.";

    echo "<br>";

    $tabuada_numero = 8;

// Variável de controle para o loop
$i = 1;

// Exibição da tabuada utilizando um loop WHILE
echo "Tabuada de multiplicação do número $tabuada_numero:\n";
while ($i <= 10) {
    $resultado = $tabuada_numero * $i;
    echo "$tabuada_numero x $i = $resultado\n";
    $i++; 
}

?>