<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Usuario - Livro</title>
</head>

<body>
<?php 

include('../login/config.php');

// Variavél para preencher o erro (se existir)
$erro = false;

if ( isset( $_GET['del'] ) ) {
	
	$pdo_insere = $conexao_pdo->prepare('DELETE FROM CARTAO WHERE cardCod=?');
	$pdo_insere->execute( array( (int)$_GET['del'] ) );
	
	header('location: index.php');
}

// Verifica se algo foi postado para publicar ou editar
if ( isset( $_POST ) && ! empty( $_POST ) ) {
	// Cria as variáveis
	foreach ( $_POST as $chave => $valor ) {
		$$chave = $valor;
		
		// Verifica se existe algum campo em branco
		if ( empty ( $valor ) ) {
			// Preenche o erro
			$erro = 'Existem campos em branco.';
			
		}
	}
			
	// Verifica se tem algum erro
	if ( ! $erro ) {


		//update pra relacionar o usuario com o livro que esta lendo
        $pdo_update = $conexao_pdo->prepare('UPDATE LENDO SET quantVezes = quantVezes+1 WHERE contaCod = ? AND livCod = ?');
		$pdo_update->execute(  array($_SESSION['contaCod'], 1));
		// $pdo_update->execute(  array($_SESSION['contaCod'], $_SESSION['livCod']));
		
		$count = $pdo_update->rowCount();

		if($count > 0){
			//usuario já leu um ou mais livros, mandar para pagina com recomendacoes		
		}else{
			//usuario novo, mostrar pagina sem recomendacoes, etc
		}		
	}
}

?> 
</body>
</html>
