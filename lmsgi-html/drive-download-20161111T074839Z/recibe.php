<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>

<?php 

foreach( $_REQUEST as $stuff => $val ) {
	if( is_array( $stuff ) ) {
	    foreach( $stuff as $thing) {
	        echo $thing;
	    }
	    echo "<br>";
	} else {
	    echo "$stuff: $val <br>";
	}

}

// var_dump($_REQUEST);
// echo "<hr>";
// print_r($_REQUEST);




 ?>

	
</body>
</html>