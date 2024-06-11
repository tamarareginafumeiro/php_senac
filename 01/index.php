<?php

// STRINGNS
    #exibir dados em tela
    echo "Olá mundo <br>";
    echo "Olá mundo 2 <br>";

    # Declaração de variáveis
    $nome = "João";
    $sobrenome = "Silva";
    echo $nome . " " . $sobrenome;
    echo "<br>";

    //
    $nome_completo = $nome . " " . $sobrenome;
    echo $nome_completo;
    echo "<br>"; // para adicionar quebra de linha

    # Para obter o comprimento de uma string em PHP, suamos o strlen()
    $texto = "Olá, mundo!";
    echo strlen($texto); // saída 12
    echo "<br>";
  
    # Para substituir partes de uma string, usamos a função str_replace()
    $texto = "O rato roeu a roupa";
    $novo_texto = str_replace("rato", "gato", $texto);
    echo $novo_texto;
    echo "<br>";

    # strtolower(): converte uma string para letras minusculas
    # strtouuper(): converte uma string para letras maiusculas
    echo $texto = "Olá, mundo! <br>";
    $texto_minusculo = strtolower($texto); //
    $texto_maiusculo = strtoupper($texto); //
    echo $texto_minusculo;
    echo $texto_maiusculo;

    # trim(): Remove espaços em branco no início e no final de uma string
    $texto = "  Olá, Mundo!  ";
    echo strlen($texto);
    echo "<br>";
    $texto_sem_espacos = trim($texto);
    echo strlen($texto_sem_espacos);
    echo "<br>";
    
    #strpos - ?
    $lista_alunos = "João, Maria, Fernando, Flor, Maria";
    $posicao_maria = strpos($lista_alunos, "Maria");
    echo "A posição de maria é: $posicao_maria";

?>

<h3>Olá <?php echo $nome_completo?></h3>