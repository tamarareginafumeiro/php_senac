<?php

require_once 'DatabaseRepository.php';
$id = $_GET['id'];
$contacts = DatabaseRepository::getItemById($id);

if($_SERVER['REQUEST_METHOD']== 'POST')
{
    $nome_produto= $_POST['nome_produto'];
    $quantidade = $_POST['quantidade'];
    $comprado = $_POST['comprado'];
    DatabaseRepository::updateItem($id, $nome_produto, $quantidade, $comprado);
    header ('Location: lista_compra.php');
    exit;
}

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar lista</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <h1>Editar lista</h1>

    <form action="edit_lista.php?id=<?= $contacts['id']; ?>" method="post">
        <label for="nome_produto">Nome produto:</label>
        <input type="text" name="nome_produto" id="nome_produto" required value="<?= $contacts['nome_produto'] ?>">
        <br>
        <label for="quantidade">Quantidade:</label>
        <input type="text" name="quantidade" id="quantidade" required value="<?= $contacts['quantidade'] ?>">
        <br>
        <label for="comprado">Comprado:</label>
        <input type="text" name="comprado" id="comprado" required value="<?= $contacts['comprado'] ?>">
        <br>

        <button type="submit">Salvar</button>
    </form>

    <a href="lista_compra.php">Voltar para a lista</a>
</body>

</html>