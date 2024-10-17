<?php

class UsuarioDAO implements BaseDAO
{
    private $db;

    public function __construct()
    {
        $this->db = Database::getInstance();
        
    }

    public function getById($id){
    

    }

    public function getAll(){

    }
    
    public function create($entity){

    }
    
    public function update($entity){

    }
    
    public function delete($id){

    }
     
}