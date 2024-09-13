<?php

/*
Chamar um endpoint da API através do cURL
(cliente URL)
Com o protocolo HTTP e o método (verb) GET 
*/
echo '<pre>'

$curl = curl_init();
curl_setopt_array($curl, array(
CURLOPT_URL => 'http://localhost/BD_AUL/UC09/test_api_1/get_some_clients/?total_clients=5',
CURLOPT_RETORNTRANSFER => true,
CURLOPT_ENDCODING => '',
CURLOPT_MAXREDIRS => 0,
CURLOPT_TIMEOUT => 0,
CURLOPT_FOLLOWLOCATION => true,
// CURLOPT_HTTP_VERSION => CURLOPT_HTTP_VERSION_1_1,
CURLOPT_CUSTOMREQUEST => 'GET',
));
$response = curl_exec($curl);
curl_close($curl);
echo $response;

?>