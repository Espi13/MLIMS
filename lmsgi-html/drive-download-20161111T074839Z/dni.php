<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Recogida datos DNI</title>
  <style> 
    section {
      color: #FFFFFF;
      background-color: #999;
    }
  </style>
</head>
<body>
<h1> Fichero dni.php</h1>
<p> Es una página HTML con código PHP embebido, necesita extensión <code>.php </code>. Se reciben los datos de dni.html y se procesan con php. Capturamos los valores de las entradas del formulario en variables, y el resto es programar.</p>

<p>El siguiente código es generado desde PHP, aunque desde el cliente nada lo indica, ya que al ver el código fuente sólo se observa  el HTML generado</p>

<section>
<h2>Campos recibidos desde formulario </h2>
  
  <?php
  
  $dni=$_REQUEST["dni"];    
  $letra=$_REQUEST["letra"];  
  
  echo "<p> DNI: $dni</p>";
  echo "<p> Letra: $letra </p>";
  
  function validar_dni($dni, $letra){
    // $letra = substr($dni, -1);
    // $numeros = substr($dni, 0, -1);
    if ( substr("TRWAGMYFPDXBNJZSQVHLCKE", $dni%23, 1) == $letra 
         && strlen($letra) == 1 && strlen ($dni) == 8 ){
      echo '=> NIF valido';
    }else{
      echo '=> NIF no valido';
    }
  }
   
  validar_dni($dni, $letra); // válido
  
  ?>
</section>

</body>
</html>
