<?php
require_once 'DatabaseRepository.php';
$contacts = DatabaseRepository::getAllContacts();
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contatos</title>
</head>

<body>
    <h1>Lista de Contatos </h1>
    <a href="add_contact.php"> Adicinar novo contato </a>
    <table border="1">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Telefone</th>
                <th>E-mail</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($contacts as $contact): ?>
                <tr>
                    <td><?= $contact['nome']; ?></td>
                    <td><?= $contact['telefone']; ?></td>
                    <td><?= $contact['email']; ?></td>
                    <td>
                        <a href="edit_contact.php?id=<?= $contact['id']; ?>">Editar</a>
                        <a href="detele_contac.php?id=<?= $contact['id'];?>"onclick="return confirm('Tem certeza que deseja deletar este contato?');">Deletar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>