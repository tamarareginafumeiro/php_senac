<?php

class DatabaseRepository {
    private static $dsn = 'mysql:host=localhost;dbname=lista_compras2';
    private static $username = 'root';
    private static $password = '';

    public static function connect() {        
        try {
            $pdo = new PDO(self::$dsn, self::$username, self::$password);
            return $pdo;
        } catch (PDOException $e) {
            echo 'Erro de conexão: ' . $e->getMessage();
        }
    }

    public static function getAllItems() {
        $pdo = self:: connect();
        $sql = "SELECT * From itens_compra";
        $stmt = $pdo->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }

    public static function addItem() {
        return "Adicionou o item com sucesso";
    }

    public static function updateItem() {
        return "Atualizou o item com sucesso";
    }

    public static function deleteItem() {
        return "Deletou o item com sucesso";
    }
}
