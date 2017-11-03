<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Recogida datos formulario</title>
  <style> 
    section { border: dotted 1px red; }
  </style>
</head>
<body>
<header>
	<h1> Fichero form-01.php</h1>
	<p> Es una página HTML con código PHP embebido, necesita extensión <code>.php </code>. Se reciben los datos de form-01.html y se procesan con php. Capturamos los valores de las entradas del formulario en variables, y el resto es programar..</p>
</header>

<p>El siguiente código enmarcado es generado desde PHP, aunque desde el cliente nada lo indica, ya que al ver el código fuente sólo se observa  el HTML generado por PHP.</p>

<section class="php"> 

<?php
$name=$_REQUEST["username"];    
$pass=$_REQUEST["contrasena"];  
$repite=$_REQUEST["repite"];

echo "<p> Username: $name</p>";
echo "<p> Clave: $pass </p>";
echo "<p>Repite: $repite </p>";

if ($pass=="1234")
  echo "<p><code> Clave demasido simple </code></p>";
else
 echo "<p><code> Clave distinta de '1234'</code></p>";	

echo "\n<ol>\n  <li>Nombre: $name</li>\n";
echo "  <li>Clave $pass </li>\n </ol>\n";

// border a la espera de estilos CSS.. :-(
echo "<table border='1'>
        <tr><th> Nombre </th>  <th> Clave  </th> </tr>
        <tr><td> $name  </td>  <td> $pass  </td> </tr> 
      </table>";
?>	


</section>
</body>
</html>
