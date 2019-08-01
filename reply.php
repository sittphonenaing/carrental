<?php
session_start();
error_reporting(0);
include('includes/config.php');

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

if (isset ($_REQUEST['FID'])) 
{
	$FID=$_REQUEST['FID'];
	$select= "
				Select * 
				from forumtable f,tblusers c
				where f.CustomerID=c.cid
				and f.ForumID='$FID'
			 ";
	$run=mysql_query($select);
	$row=mysql_fetch_array($run);

	$selectreply= "
				Select * 
				from tblusers c,reply r
				where r.CustomerID=c.cid
				and r.ForumID='$FID'
			 ";
	$runreply=mysql_query($selectreply);
	$count=mysql_num_rows($runreply);
}
//................................................
if (isset($_POST['btnreply'])) 
{
    if (!isset($_SESSION['CID'])) 
    	{
       	echo "<script>alert('Login First');</script>";
		echo "<script>window.location.assign('login.php');</script>";
       	}
    else
    	{

 	    $reply=$_REQUEST['txtreply'];
       	$date=date('Y-m-d');
       	$FID=$_REQUEST['FID'];
       	$CID=$_SESSION['CID'];

     $insert=	"
     				Insert into Reply
     				(ForumID,CustomerID,ReplyDescription,ReplyDate)
     				values
     				('$FID','$CID','$reply','$date')
     			";

     $run=mysql_query($insert);

     $update=	"
     			Update forumtable
     			set ReplyCount=ReplyCount+1
     			where ForumID='$FID'
     			";
     $run=mysql_query($update);

 if ($run)
 {
 
echo "<script>alert('Reply Successfully Saved');</script>";
echo "<script>window.location.assign('forum.php');</script>";
}
else
{
	mysql_error();

}


 }

}

?>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>CarForYou - Responsive Car Dealer HTML5 Template</title>
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
        <h1>Reply</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="#">Home</a></li>
        <li>Reply</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<form action='reply.php' method="POST" >
	<table  width="100%">
		<input type="hidden" name="FID" value='<?php echo $row['ForumID'] ?>'>
			<tr>

				<td>

					<?php
						//----------------(Get Date Different)----------------------------------------------
		$QuestionDate=$row['ForumDate'];
		$QuestionTime=$row['ForumTime'];
		$GetTodayDate = date('Y-m-d H:i:s', time());
		
		$Date1=date_create($QuestionTime);
		$Date2=date_create($GetTodayDate);

		$diff = date_diff($Date1, $Date2);

		 if($diff->format("%d")==0)
		 {
		 	$time=$diff->format("%h hours %i minutes");
		 }
		 else if($diff->format("%h")==0 && $diff->format("%d")==0)
		 {
		 	$time=$diff->format("%i minutes");
		 }
		 else
		 {
		 	$time=$diff->format("%d days %h hours %i minutes");
		 }
//-------------------------------------------------------------------------------

					echo $row['FullName'];
					echo "<br>";
					echo "<img style='border-radius:50px'; src='".$row['CustomerImage']."' width='80px' height='80px'>";
					echo "<br>";
					echo $time;
					?>
				</td>

				<td>
					<?php
						echo "<h1>";
						echo $row['ForumTitle'];
						echo "</h1>";
						echo "<br>";
						echo $row['ForumDescription'];											


					?>
				</td>

				<td>
				<?php
					echo $row['ReplyCount']; 
					echo "<br>";
					echo "Reply";
				?>
				</td>		
			</tr>
			<!-----  ------>
			<?php

				if ($count==0) 
				{
					echo "<tr><th>No Reply</th></tr>";
				}

				else
				{



					for ($i=0; $i <$count; $i++) 
					{ 
						$rows=mysql_fetch_array($runreply);
						echo "<tr>";
							echo "<td>";
								echo $rows['FullName'];
								echo "<br>";
								echo "<img style='border-radius:50px'; src='".$rows['CustomerImage']."' width='80px' height='80px'>";
								echo "<br>";
								echo $rows['ReplyTime'];
							echo "</td>";

							echo "<td colspan='2'>";
								echo $rows['ReplyDescription'];							 						

							echo "</td>";


						echo "</tr>";
					}
				}
			 ?>


			<!---- start reply---->
			
			<tr>

					<td colspan="3">
						<?php if($_SESSION['login'])
              {?>
              <div class="form-group">
              	<textarea class="form-control" name="txtreply" rows="5" cols="80" required></textarea>
                <input type="submit" class="btn"  name="btnreply" value="Reply Now">
              </div>
              <?php } else { ?>
<a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Login For Reply</a>
            <?php } ?>

					</td>


			</tr>
			<!---- end reply---->

		</table>
</form>

  
  
    



  </table>


</body>
</html>

<!--Contact-us-->


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
