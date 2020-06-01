<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Text processing with some alerts</title>
	</head>
	<?php
		function phpAlert($msg) {
			echo '<script type="text/javascript">alert("' . $msg . '")</script>';
		}

		if(isset($_POST['check'])){
			$text=$_POST['txt'];
			for($i=0;$i<strlen($text);$i++){
				if($text[$i]==' '){
					$text[$i]=$text[$i+1];
				}
			}
			if(empty($text)){
				phpAlert("Reintroduceti mesajul");
			}
			else
			{
				phpAlert("A fost introdus text");
			}
		}
	?>
	<body>
		<form method="post">
		Text: <input type="text" name="txt" value="<?php echo @$mesaj?>"/><br>
		<input type="submit" value="Check" name="check"/>
		</form>
	</body>
</html>