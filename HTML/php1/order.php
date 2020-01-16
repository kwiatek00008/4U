<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Podsumowanie zamowienia</title>
    <!-- <link rel="stylesheet" href="style.css"> -->
</head>
<body>

<?php

    $paczkow=$_POST["paczkow"];
    $grzebieni=$_POST["grzebieni"];
    $suma=0.99*$paczkow+1.29*$grzebieni;
echo<<<END

     <h2> Podsumowanie zamowienia</h2>
     <table border="1" cellpadding="10" cellspacing="0">
     <tr>
        <td>Pączek(0.99PLN/szt) </td>  <td>$paczkow </td> 
     </tr>
     <tr>
        <td>Grzebien(1.29PLN/szt) </td>  <td>$grzebieni </td> 
     </tr>
     <tr>
        <td>Suma </td>  <td>$suma PLN; </td> 
     </tr>
     </table>
     <br><a href="index.php">Powrot do strony glownej</a>
    

END;

?>

</body>
</html>