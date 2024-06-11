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
    echo "<br>";

    # strrev(): Inventer uma string
    $texto = "Socorram me subi no onibus em marrocos";
    $testo_invertido = strrev($texto);
    echo $texto_invertido;
    echo "<br>";
    echo "<br>";
    echo "<br>";
  
    # 1
    // Crie uma variável para nome e outra para profissão
    // Escreva a mensagem "Fulano é tal_profissao"

    $nome = "Valdir";
    $sobrenome = "Fernandes";
    $profissao = "Soldador";
    echo $nome . " " . $sobrenome . " é " . $profissao;
    // ou $mensagem = $nome . " é "  . $profissao;
    //echo $mensagem;
    echo "<br>";
    # 2
    // Crie uma variável senha e aramezene "senha123"
    // Verifique se a senha tem mais de 8 caracteres
    // Se sim, diga que a senha é válida. Se não, diga que é inválida
   
    $senha = "senha1234";
        if (strlen($senha) > 8) {
            echo "A senha é válida.";
        } else {
            echo "A senha é inválida.";
}
    echo "<br>";

    # 3
    // Corrija a palavra "ExEmPlO" para que ela fique totalmente em minúsculo
    echo $exmplo = "ExEmPlO";
    $exmplo_minusculo = strtolower($exmplo);
    echo $exmplo_maiusculo;

    echo "<br>";
   



    # 4
    // Corrija o link "  http://exemplo.com  " para que ele não tenha espaços inválidos
    echo "<br>";
    # 5
    // Inverta a string "abcd123" e encontre a posição do caractere "3" após a inversão



?>

<h3>Olá <?php echo $nome_completo?></h3>