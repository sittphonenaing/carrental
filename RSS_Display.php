<?php
require('includes/config.php');




?>

<html>
<head>
	<title>RSS Feed Display</title>
</head>
<body>
<table width='30%' cellpadding='20px'>

<tr>
	<th colspan='2'>ECo RSS Feeds</th>
</tr>


<?php


$select="Select * from Main_RSS";
$run=mysql_query($select);
$count=mysql_num_rows($run);

for ($i=0; $i < $count ; $i++) 
{ 

	$row=mysql_fetch_array($run);

	echo "<tr>";
	echo "<td>";
	
	echo "<h3> ".$row['MainTitle']." </h3>";
	echo "<br>";
	echo $row['MainDescription'];

	echo "</td>";

	echo "<td>";
	
	echo "<a href='RSS_Detail.php?MainID=".$row['MainID']."'> <img src='RSS.PNG'> </a>";
	

	echo "</td>";
	

	echo "</tr>";


}
?>

</table>
</body>
</html>