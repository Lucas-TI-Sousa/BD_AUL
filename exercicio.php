<?php

$dados['categorias'] = ['Balão Mágico', 'Carros de corrida', 'Bonecas', 'Carteádos', 'Tabuleiros'];

echo '<pre>';
echo Json_encode($dados, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);