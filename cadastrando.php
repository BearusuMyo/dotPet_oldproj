<!DOCTYPE html>
<html lang="pt-BR">
<head>
        <meta charset="utf-8">
        <link rel="icon" href="favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="css/stylesheet3.css" type="text/css" charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Resultado</title>
</head>
<body>
<div class="id">
<div class="info">
<?php

      require("conexao.php");

      $tx_nome = $_POST["tx_nome"];
      $tx_email = $_POST["tx_email"];
      $tx_datanasc = $_POST["tx_datanasc"];
      $tx_ende = $_POST["tx_ende"];
      $tx_telefone = $_POST["tx_telefone"];
      $tx_user = $_POST["tx_user"];
      $tx_senha = $_POST["tx_senha"];
      $tx_passconf = $_POST["tx_passconf"];


if ($tx_ende or $tx_nome or $tx_email or $tx_user or $tx_telefone or $tx_passconf or $tx_senha or $tx_datanasc == NULL) {echo "Pof favor preencha TODOS os campos";} else {
      $sqlinsert = "INSERT INTO cadastro (tx_nome,tx_email,tx_datanasc,tx_ende,tx_telefone,tx_user,tx_senha,tx_passconf) VALUES ('$tx_nome','$tx_email','$tx_datanasc','$tx_ende','$tx_telefone','$tx_user','$tx_senha','$tx_passconf')";

      mysqli_query($conexao,$sqlinsert) or die ("Cadastro não realizado para o usuário: <i><b> $tx_nome</b></i> <br> Possivelmente, o usuário que você selecionou já existe.");
      echo "Cadastro de <i><b>$tx_user</b> </i> feito com Sucesso<BR><BR>";
  }
?>
<form method="post" action="index.html">
<input type="submit" value="Retornar ao Início" class="butaum">
<input type="button" value="Voltar" class="butaum" onclick="history.back()">
</form>
</div>
</div>
</body>
</html>
