<?php
// ESTRUTRAS DE REPETIÇÃO EM PHP

// EXEMPLO 1: FOR
echo "Exemplo 1: For <br>";

    for ($i =1; $i <20; $i = $i +2){
    echo "Numero $i<br>";
}

echo "<br>";

//EXEMPLO 2: WHILE
echo "Exemplo 2: WHILE <br>";

$contador = 1;

    while($contador <= 5){
    echo "Numero $contador <br>";
    $contador++;
}

//EXEMPLO 3: DO-WHILE
echo "Exemplo 2: DO-WHILE <br>";

$cont_do =1;

    do{
        echo "Numero $cont_do <br>";
        $cont_do++;
    } while ($cont_do <= 5);

echo "<br>";

$cliente_deseja = true;

do{
    echo "Deseja adicionar um produto o produto no carrinho?<br>";
    $cliente_deseja = false;
    //$cliente_deseja = true;
} while ($cliente_deseja);

echo "<br>";

//EXEMPLO 4: FOREACH
$array_vogais = ["a", "e", "i", "o", "u"];

foreach($array_vogais as $vogal) {
    echo "Vogal: $vogal <br>",
}


?>