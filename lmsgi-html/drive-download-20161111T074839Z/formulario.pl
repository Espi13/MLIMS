#!"C:\xampp\perl\bin\perl.exe"
##
##   formulario.pl
##

use CGI;                       # carga módulo CGI
$q = new CGI;                  # crea objto CGI

# crea cabecera HTTP
print	$q->header(-type => 'text/html', -charset => 'utf-8'),  
      $q->start_html('Perl y CGI: Ejemplo uso formulario');

# añade h1 y un párrafo  
print $q->h1('Ejemplo uso formulario'),
      $q->p('Programa en perl que recoge los valores recibidos 
            desde un formulario. Usa el  módulo CGI de perl, 
            y mediante un bucle recorre los  valores e imprime nombre y valor.');


@names = $q->param;   # obtiene array con parámetros y lo asigna a names
foreach $key (@names) {
   print $q->pre($key,"=> ", $q->param($key));
}

print  $q->end_html; 







