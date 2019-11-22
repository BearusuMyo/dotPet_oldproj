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
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
      if(empty($_POST["tx_nome"])){
      	echo "Você precisa inserir seu nome completo!";
      }
      else
    {
      $tx_nome = $_POST["tx_nome"];
    }
	  if(empty($_POST["tx_email"])){  
	  echo "Você precisa informar um e-mail!";
	}
	  else{ 
      $tx_email = input::email($_POST["tx_email"]);
    }
      if (empty($_POST["tx_datanasc"])){
      	echo "Por favor informe uma data de nascimento válida!";
      }
      else{
      $tx_datanasc = $_POST["tx_datanasc"];
      }
      if (empty($_POST["tx_ende"])) {
      	echo "Insira um endereço válido pelo amor de Jeová.";
      }else{
      	 $tx_ende = $_POST["tx_ende"];
      }
      if (empty(($_POST["tx_telefone"]){
      	echo "O campo Telefone não deve estar vazio. Favor informe um número válido!";
      } else{
      $tx_telefone = $_POST["tx_telefone"];
      }
      if (empty($_POST["tx_user"])){
		echo "Por favor, insira um usuário!";      	
      } else {
      $tx_user = $_POST["tx_user"];
  	  }
  	  if (empty($_POST["tx_senha"])){
  	  	echo "Por favor insira uma senha";
  	  }
      $tx_senha = $_POST["tx_senha"];
      $tx_passconf = $_POST["tx_passconf"];

}


      $sqlinsert = "INSERT INTO cadastro (tx_nome,tx_email,tx_datanasc,tx_ende,tx_telefone,tx_user,tx_senha,tx_passconf) VALUES ('$tx_nome','$tx_email','$tx_datanasc','$tx_ende','$tx_telefone','$tx_user','$tx_senha','$tx_passconf')";

      mysqli_query($conexao,$sqlinsert) or die ("Cadastro não realizado para o usuário: <i><b> $tx_nome</b></i> <br> Possivelmente, o usuário que você selecionou já existe.");
      echo "Cadastro de <i><b>$tx_user</b> </i> feito com Sucesso<BR><BR>";
?>
<form method="post" action="index.html">
<input type="submit" value="Retornar ao Início" class="butaum">
<input type="button" value="Voltar" class="butaum" onclick="history.back()">
</form>
</div>
</div>
</body>
</html>
