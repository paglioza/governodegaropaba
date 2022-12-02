<style>
.diurna {
	color: green;
	font-face: verdana;
	font-size: 24px;
}

.noturna{
	color: navy;
	font-face: verdana;
	font-size: 24px;
}
</style>
<html>
<head>
<title>Hora</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<?php
function validaHoras($campo){
    if (preg_match('/^[0-9]{2}:[0-9]{2}$/', $campo)) {
        $horas = substr($campo, 0, 2);
        $minutos = substr($campo, 3, 2);
        if ((($horas >= 16) && ($minutos > 50)) or (($horas <= 6) && ($minutos <= 10))) {
            echo '<p class="noturna">noturna</p>';
			echo '<br>';
        }else{
			echo '<p class="diurna">diurna</p>';
			echo '<br>';
		}

    }

}

echo "Valida 16:52<br>";
validaHoras('16:52');
echo "Valida 16:12<br>";
validaHoras('16:12');
echo "Valida 06:00<br>";
validaHoras('06:00');
echo "Valida 16:15<br>";
validaHoras('06:15');
?>
</html>