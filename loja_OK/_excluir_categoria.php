<?php
// Excluir categoria
include 'menu.php';
include 'conexao.php';
$id_categoria = $_GET['id_categoria'];
?>

<!DOCTYPE html>
<html lang="pt-br">

<!-- editar_categorias.php -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Categoria</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <style>
        h3{
            text-align: center;
           color: blue;           
        }
     
    </style>
</head>

<body>
    <div class="container">
        <h3>Excluir Categoria</h3>
        <form action="_excluir_categorias.php" method="post" >
        <?php
        $sql = "SELECT * FROM categorias WHERE id_categoria = $id_categoria";
        $buscar = mysqli_query($conexao, $sql);
        while($array = mysqli_fetch_array($buscar)) {
            $id_categoria = $array['id_categoria'];
            $desc_categoria = $array['desc_categoria'];
        ?>
            <input type="hidden" name="id_categoria" value="<?php echo $id_categoria?>">
            <input type="text" name="desc_categoria" value="<?php echo $desc_categoria?>">
            <!-- input é entrada de dados. required, torna obrigatória a digitação -->
            <button type="submit" id="botao">Excluir</button>
        <?php
        } ?>    
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>     
</body>

</html>