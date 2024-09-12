<?php

//SET o canteúdo da API
header("Content-Type:application/json;charset=utf=8");

$data = require_once('../_data/data.php');

if(!isset($_GET['max']) || $_GET['max'] < 1 || $GET['max'] > count($data)) {
    $response['status'] = 'error';
    $response['message'] = 'Esta requisiçõa não está definida.';
    $response['time_response'] = time();
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
    exit();
} 

$max = $_GET['max'];

$response['status'] = 'sucesso!';
$response['animais'] = array_slice($data, 0, $max);
$response['time_response'] = time();
echo json_encode($response, JSON_UNESCAPED_UNICODE);