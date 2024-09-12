<?

/* 
Este é um exemplo muito simples do que ser uma API com vários endpoints, mas em qualquer 
mecanismo de autenticação e sem controle de erros.
Vamos apenas seguir os seguintes príncios:

1. Qualquer cliente pode ter acesso aos endpoins atráves da URL;
2. Cada endponit deve responder no formato JSON;

http://localhost/____/get_status
http://localhost/____/get_all_animals
http://localhost/____/get_animals
http://localhost/____/get_animals/?max=5

*/

//Get pega dados, post envia