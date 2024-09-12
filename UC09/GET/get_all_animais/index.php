<?php

//SET o canteúdo da API
header("Content-Type:application/json;charset=utf=8");

$response['status'] = 'Sucesso';
$response['animais'] = require_once('../_data/data.php');
$response['time_response'] = time();

echo json_encode($response, JSON_UNESCAPED_UNICODE);