<?php
session_start();
error_reporting(0);
include('includes/config.php');

?>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Car Rental Portal | Forum</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
        
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
 <style>
    .errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
    </style>
</head>
<body>

<<!-- Start Switcher -->
<?php include('includes/colorswitcher.php');?>
<!-- /Switcher -->  
        
<!--Header-->
<?php include('includes/header.php');?>
<!-- /Header --> 

<!--Page Header-->
<section class="page-header contactus_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Forum Display</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="#">Home</a></li>
        <li>Forum Display</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<form action='forum.php' method="POST" >

  <div class="header_search">
          <div id="search_toggle"><i class="fa fa-search" aria-hidden="true"></i></div>
          <form action="#" method="get" id="header-search-form">
            <select name="selcategory" placeholder="Search..." class="form-control">
              <option>Select Brand</option>
                <?php $sql = "SELECT * from  tblbrands ";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{       ?>  
<option value="<?php echo htmlentities($result->BrandName);?>"><?php echo htmlentities($result->BrandName);?></option>
<?php }} ?>
                
              
        </select>
            <button type="submit" name="btnsearch" value='search'><i class="fa fa-search" aria-hidden="true"></i></button>
          </form>
        </div>
      </div>
  
    



  </table>


</body>
</html>

<!--Contact-us-->
<section class="contact_us section-padding">
<?php

if (isset($_SESSION['login'])) 
{
$email=$_SESSION['login'];

   $update="
            update tblusers
            set CustomerCount=CustomerCount+1
            where EmailId='$email'
            ";
          $run=mysql_query($update);
}


if (isset($_POST['btnsearch'])) 
{
  $selcategory=$_REQUEST['selcategory'];
  $select= "
        Select * 
        from forumtable f,tblusers c
        where f.CustomerID=c.cid
        and f.Category='$selcategory'
        
        
       ";
  $run=mysql_query($select);
  $count=mysql_num_rows($run);

} 
else
{
$select= "
        Select * 
        from forumtable f,tblusers c
        where f.CustomerID=c.cid
        
        
       ";
  $run=mysql_query($select);
  $count=mysql_num_rows($run);

  
}
  
  echo "<table  width='100%' border='0'>";
  echo "<tr>";
    echo "<td>";
    echo "<h1>Topic</h1>";
    echo "</td>";

    echo "<td>";
    echo "<h1>Reply</h1>";
    echo "</td>";

    echo "<td>";
    echo "<h1>Author</h1>";
    echo "</td>";

   

  echo "</tr>";

  for ($i=0; $i < $count ; $i++)
  {
    $row=mysql_fetch_array($run);

    $ForumID=$row['ForumID'];
    //----------------(Get Date Different)----------------------------------------------
   
   $QuestionDate=$row['ForumDate'];
    $QuestionTime=$row['ForumTime'];
    $GetTodayDate = date('Y-m-d H:i:s', time());
    
    $Date1=date_create($QuestionTime);
    $Date2=date_create($GetTodayDate);

    $diff = date_diff($Date1, $Date2);

     if($diff->format("%d")==0)
     {
      $time=$diff->format("%H hours %i minutes");
     }
     else if($diff->format("%H")==0 && $diff->format("%d")==0)
     {
      $time=$diff->format("%i minutes");
     }
     else
     {
      $time=$diff->format("%d days %h hours %i minutes");
     }
//-------------------------------------------------------------------------------
    
    echo "<tr>";

    echo "<td><h3>".$row['Category']."</h3>";

    echo "<a href='reply.php?FID=".$row['ForumID']."'>".$row['ForumTitle']."</a></td>";


      echo  "<td>
          ".$row['ReplyCount']."
          <br>
         

          </td>";
              
      echo  "<td>
          ".$row['FullName']."
          <br>
          <img style='border-radius:50px' src='".$row['CustomerImage']."' width='80px' height='80px'>
          <br>
          $time

          </td>";

      

     
        
    echo "</tr>";
  
  }
  echo "</table>";

  
?>



  
</section>
<!-- /Contact-us--> 


<!--Footer -->
<?php include('includes/footer.php');?>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 

<!--Login-Form -->
<?php include('includes/login.php');?>
<!--/Login-Form --> 

<!--Register-Form -->
<?php include('includes/registration.php');?>

<!--/Register-Form --> 

<!--Forgot-password-Form -->
<?php include('includes/forgotpassword.php');?>
<!--/Forgot-password-Form --> 

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>

<!-- Mirrored from themes.webmasterdriver.net/carforyou/demo/contact-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Jun 2017 07:26:55 GMT -->
</html>
