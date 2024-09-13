<?php
 
// Set o conteúdo da API
header("Content-Type:application/json; charset=utf-8");
 
// Verificar se foi o POST
if($_SERVER['REQUEST_METHOD'] != 'POST') {
    $response['status'] = 'error';
    $response['message'] = 'Requisição inválida';
    $response['time_response'] = time();
    echo json_decode($response, JSON_UNESCAPED_UNICODE);
    exit;
}
 
$valor1 = $_POST['valor1'];
$valor2 = $_POST['valor2'];
$response['status'] = 'sucesso!';
$response['valor1'] = $valor1;
$response['valor2'] = $valor2;
$response['adicao'] = $valor1 + $valor2;
$response['subtracao'] = $valor1 - $valor2;
$response['multiplicacao'] = $valor1 * $valor2;
$response['divisao'] = $valor1 / $valor2;
$response['time_response'] = time();
echo json_encode($response, JSON_UNESCAPED_UNICODE);
 
?>