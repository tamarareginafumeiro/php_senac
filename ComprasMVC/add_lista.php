<?php
require_once 'DatabaseRepository.php';
    if($_SERVER['REQUEST_METHOD']== "POST") {
        $nome_produto = $_POST['nome_produto'];
        $quantidade = $_POST['quantidade'];
        $comprado = $_POST['comprado'];
        DatabaseRepository::addItem($nome_produto, $quantidade, $comprado);
        header('Location: lista_compra.php');
        exit;
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adicionar produto</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <h1>Adicionar produto</h1>

    <form action="add_lista.php" method="post">
        <label for="nome">Nome do produto:</label>
        <input type="text" name="nome_produto" id="nome_produto" required>
        <br>
        <label for="quantidade">quantidade:</label>
        <input type="text" name="quantidade" id="quantidade" required>
        <br>
        <label for="">Comprado:</label>
        <input type="text" name="comprado" id="comprado" required>
        <br>
        <br>
        <button type="submit">Adicionar</button>
        
    </form>
    <br>
    <a href="lista_compra.php">Voltar para a lista de compras</a>
</body>

</html>