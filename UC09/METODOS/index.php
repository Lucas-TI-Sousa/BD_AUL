<?php

/*
Com o metodo post, geralmente usa-se o cURL.
Geralmente usado no php para efetuar requisições  em APIs
*/

$curl = curl_init();
curl_setopt_array($curl,[
    CURLOPT_URL =>'http://localhost/UC9/sala/METODO/metodo_post',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_CUSTOMREQUEST  => 'post',
    CURLOPT_POSTFIELDS => array('valor1' => '10', 'valor2' => '20')
]);

$response = curl_exec($curl);
curl_close($curl);

$dados = json_decode($response);
echo'<pre>';
print_r($dados);