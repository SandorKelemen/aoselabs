<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Calculator</title>
</head>
<?php
if ( isset( $_POST[ 'calculate' ] ) ) {
	$t1 = ( float )$_POST[ 'op1' ];
	$t2 = ( float )$_POST[ 'op2' ];
	$sum = $t1 + $t2;
	$dif = $t1 - $t2;
	$prod = $t1 * $t2;
	$imp = $t1 / $t2;
}
	
?>
<body>
	<form method="post" name="form1">
	Operand 1: <input type="text" name="op1" value="<?php echo @$t1;?>"/><br>
	Operand 2: <input type="text" name="op2" value="<?php echo @$t2;?>"/><br>
	Suma: <input type="text" value="<?php echo @$sum;?>"/><br>
	Diferenta: <input type="text" value="<?php echo @$dif;?>"/><br>
	Inmultirea: <input type="text" value="<?php echo @$prod;?>"/><br>
	Impartirea: <input type="text" value="<?php echo @$imp;?>"/><br>
	<input type="submit" value="Calculeaza" name="calculate">
	</form>
</body>
	
</html>
