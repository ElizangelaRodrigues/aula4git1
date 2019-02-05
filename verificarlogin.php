<?
//Pegar os dados da tela 
	$login = $_POST["login"];
	$senha = md5($_POST["senha"]);

//Abrir conexão com o banco.

	include_once 'conexao.php';

//Montar a instrução de consulta, verificar se existe o login e a senha no banco.//

	$sql = "select * from usuario where login= '".$login."' and senha = '".$senha."'";

	$result =mysqli_query($con,$sql);

	if(mysqli_num_rows ($result)==1){
		//echo "Logado !";
		header("location:painel.php");
		//echo"Logado";
	}else{
		//echo "não encontrei ninguem";
		$msg ="Login/Senha Invalida";
		header("location:index.html");//redireciona para a página html//
	}
?>