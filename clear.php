<?php
session_start();
error_reporting(0);
include('includes/config.php');

if (isset($_SESSION['login'])) 
{
$email=$_SESSION['login'];

   $update="
            update tblusers
            set CustomerCount=0
            where EmailId='$email'
            ";
          $run=mysql_query($update);
          echo "<script>alert('Successfully Clear');</script>";
          echo "<script>window.location.assign('index.php');</script>";
}

?>
