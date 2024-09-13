<?php
 
// Set o conteúdo da API
header("Content-Type:application/json; charset=utf-8");
 
// Endpoint que está a espera de um pedido do tipo GET
 
// Verificar se o pedido vem acompanhado dos valores requiridos.
 
if(!isset($_GET['valor1']) || !isset($_GET['valor2'])) {
    $response['status'] = 'error';
    $response['message'] = 'Ausência dos parâmetros, é obrigatorio (valor1 e valor2)';
    $response['time_response'] = time();
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
    exit;
}
 
$valor1 = $_GET['valor1'];
$valor2 = $_GET['valor2'];
$response['status'] = 'Sucesso';
$response['valor1'] = $valor1;
$response['valor2'] = $valor2;
//E possivel utilizar todos os parametros declarados!
//$response['multipllicação'] = $valor1 *$valor2;
$response['multiplicacao'] = $valor1 * $valor2;
$response['time_response'] = time();
echo json_encode($response, JSON_UNESCAPED_UNICODE);
 
 
 