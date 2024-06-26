<?php
echo "Desafio 1: Contagem Regressiva";
echo "<br>";
echo "   A sequência de Fibonacci é uma sequência de números inteiros em que cada termo é a soma dos dois anteriores.
Crie um programa que solicite ao usuário um número N e exiba os N primeiros termos da sequência de Fibonacci.
";
$numero = 5; //Número fornecido pelo usuário.
echo "Contagem Regressiva <br>";

// Solução com for
for($i = $numero; $i >= 0; $i--) {
    echo "Faltam $i segundos <br>";
}
echo "<br>";

// Solução com while
$i = $numero;
while($i >= 0) {
    echo "Faltam $i segundos <br>";
    $i--;
}
echo "<br>";

// Solução com do-while
$i = $numero;
do {
    echo "Faltam $i segundos <br>";
    $i--;
} while ($i >= 0);
echo "<br>";
echo "<hr>";
echo "<hr>";

 echo "Desafio 2:Tabuada";
 echo "<br>";
 echo  "Verificar se a soma de A + B é igual a C
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
echo "<hr>";
echo "<hr>";
echo "<br>";
echo "<br>";

echo "Desafio 3: Sequência Fibonacci";
echo "<br>";
echo "A sequência de Fibonacci é uma sequência de números inteiros em que cada termo é a soma dos dois anteriores.
Crie um programa que solicite ao usuário um número N e exiba os N primeiros termos da sequência de Fibonacci.";
echo "<br>";


$anterior = 0;
$atual = 1;
$termos = 20;

echo "$anterior $atual ";
// Solução com for
//for($i = 2; $i <= $termos; $i++) {
//  $proximo = $anterior + $atual;
//echo "$proximo ";
//  $anterior = $atual;
// $atual = $proximo;
//}

// Solução com while
$i = 2;
while($i <= $termos) {
    $proximo = $anterior + $atual;
    echo "$proximo ";
    $anterior = $atual;
    $atual = $proximo;
    $i++;
}
echo "<hr>";
echo "<hr>";
echo "<br>";
echo "<br>";

//// DESAFIOS LÓGICOS - ESTRUTURAS DE REPETIÇÃO
echo "Atividade 1: Verificar se a soma de A + B é igual a C";
echo "<br>";
/*
    Solicita três números inteiros ao usuário (A, B e C) e verifica se a soma de A e B é igual a C.
*/
echo "<hr>";
$A = 5;
$B = 10;
$C = 15;

if($A + $B == $C) {
    echo "A soma de A e B é giual a C <br>";
} else {
    echo "A soma de A e B é diferente de C <br>";
}



echo "<hr>";
echo "<hr>";
echo "<br>";
echo "<br>";

echo "<hr>";
echo "<hr>";
echo "<br>";
echo "<br>";

?>