<?php 
	require_once"conexao.php";

	$tx_user= $_POST['tx_user'];
	$tx_senha= $_POST['tx_senha'];

	$sql= "select tx_user,tx_senha from cadastro where tx_user='$tx_user' and tx_senha='$tx_senha'";

	$query= mysqli_query($conexao,$sql);

if ($tx_user && $tx_senha) {

require("index2.html");

}
else {
require("index3.html");
 }


	
?>