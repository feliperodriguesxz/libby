<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Plano</title>
</head>

<body>
<?php 

//include('../login/config.php');

$choice = @$_POST['options'];

if($choice == 'R$9,90'){
	$choice = 1;
	$_SESSION['contaPlano'] = 1;

	header("Location:http://localhost/libby/signup/pagamento.html");
}else if($choice == 'R$19,90'){
	$choice = 2;
	$_SESSION['contaPlano'] = 2;
	
	header("Location:http://localhost/libby/signup/pagamento.html");
}else if($choice == 'R$27,90'){
	$choice = 3;
	
	$_SESSION['contaPlano'] = 3;
	header("Location:http://localhost/libby/signup/pagamento.html");
}

?> 
</body>
</html>
