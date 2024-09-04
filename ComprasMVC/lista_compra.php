
<?php
require_once 'DatabaseRepository.php';
$contacts = DatabaseRepository::getAllItems();
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista compra</title>
</head>

<body>
    <h1>Lista de Contatos </h1>
    <a href="add_lista.php"> Adicinar na lista </a>
    <table border="1">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Quantidade</th>
                <th>Comprado</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($contacts as $contact): ?>
                <tr>
                    <td><?= $contact['nome_produto']; ?></td>
                    <td><?= $contact['quantidade']; ?></td>
                    <td><?= $contact['comprado']; ?></td>
                    <td>
                        <a href="edit_lista.php?id=<?= $contact['id']; ?>">Editar</a>
                        <a href="detele_lista.php?id=<?= $contact['id'];?>"onclick="return confirm('Tem certeza que deseja deletar este produto?');">Deletar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>