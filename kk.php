<?php
require('includes/config.php');


$query="
	    Create table Main_RSS
       (
	       	MainID int not null primary key,
	       	MainTitle varchar(30),
	       	MainDescription varchar(30)		
	   )";
$ret=mysql_query($query);
if ($ret)
{
	echo"<p>Main Rss Table Created</p>";
}
else
{
	echo"<p>Please check again,something went wrong".mysql_error()."</p>";
}

$insert="insert into Main_RSS values (1,'Car News','Car news from Autoweek.com')";
$ret=mysql_query($insert);

$insert="insert into Main_RSS values (2,'Car Review','Car Reviews from Autoweek.com')";
$ret=mysql_query($insert);

$insert="insert into Main_RSS values (3,'Motorsports News','Motorsports headlines from Autoweek.com')";
$ret=mysql_query($insert);


if ($ret)
{
	echo"<p>Main Rss Table INserted</p>";
}
else
{
	echo"<p>Please check again,something went wrong".mysql_error()."</p>";
}

$query="
	    Create table Link_RSS
       (
	       	LinkID int not null primary key,
	       	MainID int,
	       	Title text,
	       	TitleLink text,
	       	LinkDate text
	       		
	   )";
$ret=mysql_query($query);
if ($ret)
{
	echo"<p>Link Rss Table Created</p>";
}
else
{
	echo"<p>Please check again,something went wrong".mysql_error()."</p>";
}

$insert="insert into Link_RSS values (1,1,'New-car sales for November 2017: Winners and losers','http://autoweek.com/article/car-news/new-car-sales-november-2017-winners-and-losers','Tuesday, December 5, 2017, 2:30 AM')";
$ret=mysql_query($insert);

$insert="insert into Link_RSS values (2,1,'Why can't the Lotus Elite get any respect?','http://autoweek.com/article/car-news/new-car-sales-november-2017-winners-and-losers','Wednesday, December 13, 2017, 12:10 AM')";
$ret=mysql_query($insert);

$insert="insert into Link_RSS values (3,2,'9 reasons why the 2018 Jeep Wrangler Rubicon JL is Killer Off-Road','http://autoweek.com/article/car-news/new-car-sales-november-2017-winners-and-losers','Tuesday, December 5, 2017, 2:30 AM')";
$ret=mysql_query($insert);

$insert="insert into Link_RSS values (4,3,'Alleged Shelby GT500 leaks continue with brakes, oil specs','http://autoweek.com/article/car-news/new-car-sales-november-2017-winners-and-losers','Wednesday, December 13, 2017, 12:10 AM')";
$ret=mysql_query($insert);



if ($ret)
{
	echo"<p>Link Rss Table INserted</p>";
}
else
{
	echo"<p>Please check again,something went wrong".mysql_error()."</p>";
}

?>
