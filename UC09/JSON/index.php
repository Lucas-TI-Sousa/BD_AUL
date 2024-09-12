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
    'Conceição'
];
echo '<pre>';
//json_encode transforma um array em uma string Json.
echo json_encode($dados);

echo '<hr>';
//Dados vao aparecer com caracteres unicode
echo json_encode($dados, JSON_PRETTY_PRINT);

echo '<hr>';
//Acentuação legivel
echo json_encode($dados, JSON_UNESCAPED_UNICODE);

echo '<hr>';
echo json_encode($dados, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

echo'<hr>';

$dadoss = [
    'administrador' => 'João Ribeiro',
    'Secretaria' => 'Carla Santos',
    'Diretor_geral' => 'Márcio Silva',
    'oficial_contas' => 'Fernanda Correia'
];

echo json_encode($dadoss, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

?>

<script>
let dadoss = JSON.parse('<?= json_encode ($dadoss, JSON_UNESCAPED_UNICODE) ?> ');

//Apresentaçaõ dos dados como objetos
console.log(dadoss);

//Tabela
console.table(dadoss);

//Individual
console.log(dadoss.Secretaria);


</script>


 
