<?php
$dsn = 'mysql:host=localhost;dbname=lista_compras';
$username = 'root';
$password = '';

/*try {
    $pdo = new PDO($dsn, $username, $password);

    $sql = "UPDATE ";
} catch (PDOException $e) {
    echo 'Falha na conexão: ' . $e->getMessage();
    exit;
}*/

/*try {
    $pdo = new PDO($dsn, $username, $password);

    $sql = "UPDATE itens_compra SET comprado = :comprado WHERE id = :id";
} catch (PDOException $e) {
    echo 'Falha na conexão: ' . $e->getMessage();
    exit;
}*/

try {
    $pdo = new PDO($dsn, $username, $password);

    $sql = "UPDATE itens_compra SET comprado = :comprado WHERE id = :id";

    $stmt = $pdo->prepare($sql);
    $stmt->execute(['comprado' => true, 'id' => 1]);

    echo "Item atualizado com sucesso";

} catch (PDOException $e) {
    echo 'Falha na conexão: ' . $e->getMessage();
    exit;
}

?>