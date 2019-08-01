<?php

$sesid = session_id();
 
if(!isset($_COOKIE['coki']))
{
 setcookie("coki", "$sesid", time()+60);
 setcookie("tt", time()+60, time()+60);
}

if(isset($_COOKIE['coki']))
{
	if(time() > $_COOKIE['tt'])
	{
		echo "sss";
		setcookie("coki", "", time()-60);
	}

	if($sesid == $_COOKIE['coki'])
	{
	      $count = file_get_contents("counter.txt");
	      $count = trim($count);
	      $count = $count + 1;

	      $fl = fopen("counter.txt","w+");
	      fwrite($fl,$count);
	      fclose($fl);
	      
	      setcookie("coki", "Ok", time()+60);
	}   

}

 $count = file_get_contents("counter.txt");

 ?>


