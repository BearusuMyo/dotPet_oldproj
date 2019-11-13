<html>
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



$sqlinsert = "INSERT INTO cadastro (tx_nome,tx_email,tx_datanasc,tx_ende,tx_telefone,tx_user,tx_senha,tx_passconf) VALUES ('$tx_nome','$tx_email','$tx_datanasc','$tx_ende','$tx_telefone','$tx_user','$tx_senha','$tx_passconf')";

mysqli_query($conexao,$sqlinsert) or die ("NAO FOI POSSIVEL CADASTRAR :<i><b> $tx_nome</b> </i>");

echo "Cadastro de <i><b>$tx_user</b> </i> feito com Sucesso<BR><BR>";

?>
<form method="post" action="index.html">
<input type="submit" value="VOLTAR">
</form>
</html>



