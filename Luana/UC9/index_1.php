<?php
// Existe duas funções fundamentais no php para tratar JSON.
// Uma para criar dados no formato JSON.
// Outra tranformar dados de formato JSON em PHP (arrays).

// Transforma arrays em JSON

$dados = [
    'João',
    'Ana',
    'Carlos',
    'Joaquim',
    'Cristina',
    'André',
    'Conceição',
];
echo '<pre>';
//json_encode transforma um array em uma string Json.
echo json_encode($dados);
echo '<hr>';

//dados vão aparecer unicoude(em lista)
echo json_encode($dados, JSON_PRETTY_PRINT);
echo '<hr>';

// deixa a acentução visivel
echo json_encode($dados, JSON_UNESCAPED_UNICODE);
echo '<hr>'; 

// deixa a acentução visivel e unicoude
echo json_encode($dados, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
echo '<hr>'; 

$dadoss = [
    'administrador' => 'João Robeiro',
    'secretaria' => 'Carla Santos',
    'diretor_geral' => 'Márcio Silva',
    'Oficial_contas' => 'Fernanda Correia',
];
echo json_encode($dadoss, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
echo '<hr>'; 
?>
<script>
let dadoss = JSON.parse('<?= json_encode($dadoss, JSON_UNESCAPED_UNICODE)?>');

//Apresentação dos dados com objetos
console.log(dadoss);

// tabela
console.table(dadoss);

// individual
console.log(dadoss.administrador);

</script>


