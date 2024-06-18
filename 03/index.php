<?php
//// INTRODUÇÃO A ARRAYS EM PHP

// Definição de Arrays
$frutas = array("Maçã", "Banana", "Laranja", "Morango");
print_r($frutas);
echo "<br>";

$numeros = [2, 5, 6, 9];
print_r($numeros);
echo "<br>";

$alunos = array("João" => 18, "Maria" => 20, "Pedro" => 19);
print_r($alunos);
echo "<br>";

// Acessando elementos de um array
echo "A segunda fruta é: " . $frutas[1] . "<br>";
echo "O terceiro número:" . $numeros[2] . "<br>";
echo "A idade de João é: " . $alunos["João"] . "<br>";

// Alterando elementos em um array
$frutas[0] = "Pera";
print_r ($frutas);
echo "<br>";

//$numeros[5] = 101;
//print_r($numeros);
//echo "<br>";

$numeros[4] = 100;
print_r($numeros);
echo "<br>";

$alunos["Maria"] = 21;
$alunos["Ana"] = 21;
print_r($alunos);





?>