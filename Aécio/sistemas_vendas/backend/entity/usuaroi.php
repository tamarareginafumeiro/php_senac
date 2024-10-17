<?php

class Usuario 
{
    // Propriedaes
    private $id;
    private $email;
    private $dataCadastro;

    // Construtor
    public function __construct($id, $email)
    {
        $this->id = $id;
        $this->email = $email;
    }
    // Getters
    public function getEmail()
    {
        return $this->email;
    }

    // Setters
    public function setDataCadastro($data)
    {
        $this->dataCadastro = $data;
    }
}

?>