<?php
$dsn = 'mysql:host=localhost;dbname=alunos';
$user = 'root';
$password = '';

try {
    $dbh = new PDO($dsn, $user, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $sql = "SELECT * FROM atividade_tii_05.tb_cliente_26_06_24";
    $stmt = $dbh->query($sql);

    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo '<pre>';
    print_r($result);
    echo '</pre>';
} catch(PDOException $e) {
    echo "Erro ao se conectar ao banco: <br>";
    echo $e;
    exit;
}

?>