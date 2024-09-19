 <?php
  $url = "http://localhost/BD_AUL/UC09/API_POKEMON/api.json";
  $ch =curl_init($url); //chamada a api a ser trabalhada
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); //ytansforma o textpo em imagem
  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); //libera a comunicação REST CASO TIGVER ALGUM ERRO OU PLOBLEMA EM ACESSO
  $pokemons = json_decode(curl_exec($ch));
 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    <title>Pokemóns</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.min.css" />
    <link rel="stylesheet" type="text/css" href="estilo.css">
  </head>
  <body>
    <section class="hero is-info is-small">
      <div class="hero-body">
        <div class="container has-text-centered">
          <p class="title">
            Listagem de Pokémons
          </p>
          <p class="subtitle">
            Consumo de API com PHP
          </p>
        </div>
      </div>
    </section>
    <div class="box cta">
     
    </div>
    <section class="container">
     <?php
     if(count($pokemons->pokemon)){ //verifica se existe pokemon
      $i = 0;
      foreach($pokemons->pokemon as $pokemon){
        $i++;
      ?>
      <?php
      if($i % 3 == 1){?>
      
      <div class="columns features">
      <?php } ?>
        <div class="column is-4">
          <div class="card">
            <div class="card-image has-text-centered">
              <figure class="image is-128x128">
                <img src="<?=$pokemon -> img ?>" alt="<?= $pokemon -> name ?> " class="" data-target="modal-image2">
              </figure>
            </div>
            <div class="card-content has-text-centered">
              <div class="content">
                 <h4><?= $pokemon -> name ?></h4> 
              </div>
            </div>
          </div>
        </div>
        <?php if($i % 3 == 0){?>
      </div>
       <?php }}} else {?>
        <!-- se não tiver pokemom retorna essa mensagem -->
        <strong>Nenhum pokemón retornado pela API</strong>
      <?php } ?>
    </section>
  </body>
</html>