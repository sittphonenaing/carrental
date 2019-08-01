<?php
	session_start();
	include('counter.php');
	include('includes/config.php');

	if (isset($_POST['btnsave']))
	{
		$maintitle=$_REQUEST['t'];
		$maindesc=$_REQUEST['tamd'];
		
		$insert="insert into Main_RSS (MainTitle,MainDescription) values ('$maintitle','$maindesc')";
		$run=mysql_query($insert,$connection);
		if ($run)
		{
			//echo "save";
			echo "<script>alert('Save')</script>";
		}
		else
		{
			echo mysql_error();
		}
	}
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Parisienne' rel='stylesheet' type='text/css'>
<!-- CSS Files -->
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="menu/css/simple_menu.css">
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="boxes/css/style5.css">
<!-- JS Files -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.eislideshow.js"></script>
<script src="js/custom.js"></script>
<script>
jQuery.noConflict()(function ($) {
    $('#ei-slider').eislideshow({
        animation: 'center',
        autoplay: true,
        slideshow_interval: 3000,
        titlesFactor: 0
    });
});
</script>
<script src="js/slides/slides.min.jquery.js"></script>
<script src="js/cycle-slider/cycle.js"></script>
<script src="js/nivo-slider/jquery.nivo.slider.js"></script>
<script src="js/tabify/jquery.tabify.js"></script>
<script src="js/prettyPhoto/jquery.prettyPhoto.js"></script>
<script src="js/twitter/jquery.tweet.js"></script>
<script src="js/scrolltop/scrolltopcontrol.js"></script>
<script src="js/portfolio/filterable.js"></script>
<script src="js/modernizr/modernizr-2.0.3.js"></script>
<script src="js/easing/jquery.easing.1.3.js"></script>
<script src="js/kwicks/jquery.kwicks-1.5.1.pack.js"></script>
<script src="js/swfobject/swfobject.js"></script>
<!-- FancyBox -->
<link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox.css" media="all">
<script src="js/fancybox/jquery.fancybox-1.2.1.js"></script>
</head>
<body>
<div class="header">
  <div id="site_title"><a href="index.html"><img src="img/logo.png" alt=""></a></div>
  <!-- Main Menu -->
  <?php
		if (isset($_SESSION['customerID'])) 
		{
			echo "<ol id='menu'>
				  <li class='active_menu_item'><a href='#'>Car</a>
					  <ol>
						<li><a href='cardisplaysample.php'>Car Display</a></li>
						<li><a href='Review.php'>Car Review</a></li>
					  </ol>
				  </li>
				  <li><a href='forum.php'>Forum</a></li>
				  <li><a href='RSS_Display.php'>RSS Display</a></li>
				  <li><a href='Clear.php'>Clear History</a></li>
				  <li><a href='Logout.php'>Logout</a></li>
				  </ol>";
		}
		else if (isset($_SESSION['accountName']))
		{
			echo "<ol id='menu'>
				  <li class='active_menu_item'><a href='#'>Car</a>
					  <ol>
						<li><a href='cardisplaysample.php'>Car Display</a></li>
						<li><a href='Car.php'>Car Entry</a></li>
					  </ol>
				  </li>
				  <li class='active_menu_item'><a href='#'>RSS</a>
					  <ol>
						<li><a href='RSS_Display.php'>RSS Display</a></li>
						<li><a href='RSS_entry.php'>RSS Entry</a></li>
						<li><a href='Link_Entry.php'>Link Entry</a></li>
					  </ol>
				  </li>
				  <li><a href='Logout.php'>Logout</a></li>
				  </ol>";
		}
		else
		{
			echo "<ol id='menu'>
				  <li class='active_menu_item'><a href='#'>Car</a>
					  <ol>
						<li><a href='cardisplaysample.php'>Car Display</a></li>
					  </ol>
				  </li>
				  <li><a href='forum.php'>Forum</a></li>
				  <li><a href='RSS_Display.php'>RSS Display</a></li>
				  <li><a href='CustomerEntry.php'>Register</a></li>
				  <li><a href='LoginForm.php'>Customer Login</a></li>
				  <li><a href='adminlogin.php'>Admin Login</a></li>
				  </ol>";
		}
	?>
</div>
<!-- END header -->
<div style="clear:both"></div>
<div class="wrapper">
  <div id="ei-slider" class="ei-slider">
    <ul class="ei-slider-large">
      <li> <img src="img/large/30.png" alt="">
        <div class="ei-title">
          <h2>Professional</h2>
          <h3>Lightning Equipment</h3>
        </div>
      </li>
      <li> <img src="img/large/23.jpg" alt="">
        <div class="ei-title">
          <h2>Passionate</h2>
          <h3>Ballerina</h3>
        </div>
      </li>
      <li> <img src="img/large/24.jpg" alt="">
        <div class="ei-title">
          <h2>Tranquility</h2>
          <h3>in red</h3>
        </div>
      </li>
      <li> <img src="img/large/25.jpg" alt="">
        <div class="ei-title">
          <h2>Vintage</h2>
          <h3>Beauty</h3>
        </div>
      </li>
      <li> <img src="img/large/26.jpg" alt="">
        <div class="ei-title">
          <h2>Mystery</h2>
          <h3>Woman</h3>
        </div>
      </li>
      <li> <img src="img/large/32.jpg" alt="">
        <div class="ei-title">
          <h2>In the</h2>
          <h3>Spotlight</h3>
        </div>
      </li>
      <li> <img src="img/large/33.jpg" alt="">
        <div class="ei-title">
          <h2>A touch of</h2>
          <h3>Fashion</h3>
        </div>
      </li>
    </ul>
    <!-- ei-slider-large -->
    <ul class="ei-slider-thumbs">
      <li class="ei-slider-element">Current</li>
      <li><a href="#">Slide 1</a><img src="img/thumbs/30.png" alt=""></li>
      <li><a href="#">Slide 2</a><img src="img/thumbs/23.jpg" alt=""></li>
      <li><a href="#">Slide 3</a><img src="img/thumbs/24.jpg" alt=""></li>
      <li><a href="#">Slide 4</a><img src="img/thumbs/25.jpg" alt=""></li>
      <li><a href="#">Slide 5</a><img src="img/thumbs/26.jpg" alt=""></li>
      <li><a href="#">Slide 6</a><img src="img/thumbs/32.jpg" alt=""></li>
      <li><a href="#">Slide 7</a><img src="img/thumbs/33.jpg" alt=""></li>
    </ul>
    <!-- ei-slider-thumbs -->
  </div>
  <!-- ei-slider -->
</div>
<!-- wrapper -->
<div style="margin-top: 30px">
  <form action='RSS_entry.php' method='POST'/>
	<h1>RSS entry</h1>
	<table>
		<tr>
			<td>
				Main title
			</td>
			<td>
				<input type="text" name="t">
			</td>
		</tr>
		<tr>
			<td>
				Main description
			</td>
			<td>
				<textarea name="tamd"></textarea>
			</td>
		</tr>
		<tr>
			<td>

			</td>
			<td>
				<input type="submit" name="btnsave">
			</td>
		</tr>
	</table>
	</form>
  <div style="clear:both; height: 40px"></div>
  <div class="box_highlight">
    <h1 style="font-size:28px; letter-spacing: 16px; padding-top: 20px; text-align:center; text-transform: uppercase; color: #a7a7a7"> The beauty of Green World</h1>
  </div>
  <div style="clear:both; height: 40px"></div>
</div>
<!-- END container -->
<div id="footer">
  <!-- First Column -->
  <div class="one-fourth">
    <h3>Useful Links</h3>
    <ul class="footer_links">
      <li><a href="#">Lorem Ipsum</a></li>
      <li><a href="#">Ellem Ciet</a></li>
      <li><a href="#">Currivitas</a></li>
      <li><a href="#">Salim Aritu</a></li>
    </ul>
  </div>
  <!-- Second Column -->
  <div class="one-fourth">
    <h3>Terms</h3>
    <ul class="footer_links">
      <li><a href="#">Lorem Ipsum</a></li>
      <li><a href="#">Ellem Ciet</a></li>
      <li><a href="#">Currivitas</a></li>
      <li><a href="#">Salim Aritu</a></li>
    </ul>
  </div>
  <!-- Third Column -->
  <div class="one-fourth">
    <h3>Information</h3>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sit amet enim id dui tincidunt vestibulum rhoncus a felis.
    <div id="social_icons"> Theme by <a href="http://www.csstemplateheaven.com">CssTemplateHeaven</a><br>
      Photos © <a href="http://dieterschneider.net">Dieter Schneider</a> </div>
  </div>
  <!-- Fourth Column -->
  <div class="one-fourth last">
    <h3>Socialize</h3>
    <img src="img/icon_fb.png" alt=""> <img src="img/icon_twitter.png" alt=""> <img src="img/icon_in.png" alt=""> </div>
  <div style="clear:both"></div>
</div>
<!-- END footer -->
</body>
</html>