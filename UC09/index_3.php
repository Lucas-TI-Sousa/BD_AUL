<?php
/* A função Json_decode permite a operação contraria, 
ou seja partindo de um Json, deixando a coleção operável em php.*/

$Json = '["João", "ana", "Carlos", "Maria"]';
$nome = Json_decode($Json);

echo '<pre>';
print_r($nome);  

$Json = '{"administrador": "joão Ribeiro", 
        "secretária": "Carlos santos",
        "diretor geral": "mácio silva", 
        "oficial_contas": "fernando correia"}';
$dados_empresa = Json_decode($Json, true);

print_r($dados_empresa);