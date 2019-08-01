<?php

require('includes/config.php');

if (isset($_REQUEST['MainID'])) 
{
   $MainID=$_REQUEST['MainID'];

   $select="
   		   Select * 
		   from Main_RSS m,Link_RSS l
		   where m.MainID=l.MainID
		   and l.MainID='$MainID'
		   ";
   $run=mysql_query($select);
   $count=mysql_num_rows($run);

}


?>

<html>
<head>
	<title>RSS Feed Detail</title>
</head>
<body>

<fieldset>
<legend>ECO.com Latest Stories</legend>
<table  width='100%' cellpadding='20px'>

<?php

for ($i=0; $i < $count ; $i++) 
{ 
	$row=mysql_fetch_array($run);
	echo "<tr >";
	
	echo "<td>";
	
	echo "<a href='".$row['TitleLink']."'>".$row['Title']."</a>";
	echo "<br>";
	echo $row['LinkDate'];

	echo "</td>";
	echo "</tr>";
}
?>

</table>
</fieldset>
</body>
</html>