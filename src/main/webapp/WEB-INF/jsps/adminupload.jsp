<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>A locality Sensitive low ranked model for Image tag Completion</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script> 
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>  
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script> 
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script> 
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 7]>
	<div style=' clear: both; text-align:center; position: relative;'>
		<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
	</div>
<![endif]-->
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page1">
<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="index.html">Sensitive Low Rank Tag</a>
						<strong class="slog"></strong>
					</h1>
<!--					<form id="search-form" action="" method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="search-form">					
								<input type="text" name="search" value="Type Keyword Here" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
								<a href="#" onClick="document.getElementById('search-form').submit()">Search</a>									
							</div>
						</fieldset>
					</form>-->
				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
						  <li><a href="adminhome.jsp">Home</a></li>
						  <li><a class="active" href="adminupload.jsp">Upload</a></li>
						  <li><a href="adminvwimgs.jsp">Images</a></li>
						  <li><a href="adminviewuser.jsp">Users</a></li>
						  <li><a href="admingraph.jsp">Graph</a></li>
						  <li class="last-item"><a href="adminlogin.jsp">Logout</a></li>
						</ul>
					</nav>
				</div>
				<div class="row-3">
					<div class="slider-wrapper">
						<div class="slider">
						  <ul class="items">
							<li><img src="images/1.jpeg" alt=""></li>
							<li><img src="images/2.jpg" alt=""></li>
							<li><img src="images/3.jpg" alt=""></li>
						  </ul>
						  <a class="prev" href="#">prev</a>
						  <a class="next" href="#">prev</a>
						</div>
					</div>
				</div>
			</header>
			<section id="content">
				<div class="padding">
					<div class="wrapper">
<!--<div class="col-3">
<div class="indent">-->
    
<center>
<h2>UPLOAD IMAGE DETAILS!!!</h2>
<form action="adminuploadDB.jsp" method="post" enctype="multipart/form-data">
<table>
    <tr>
        <th>Image ID</th>
<%
Random r = new Random();
String st = "1234567890ABCDEFGHSTUVWXYZ";
String id="";
for(int x=0;x<5;x++){id = id+st.charAt(r.nextInt(st.length())); } 
%>
<td><input type="text" name="id" value="<%=id%>"readonly/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Name</th>
        <td><input type="text" name="name" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Type</th>
        <td><input type="text" name="type" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Category</th>
        <td><input type="text" name="category" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Description</th>
        <td><input type="text" name="description" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>color</th>
        <td><input type="text" name="color" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Characteristics</th>
        <td><input type="text" name="characterstic" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Upload Image</th>
        <td><input type="file" name="pic" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th></th>
        <td><input type="submit"  value="Add"/></td>
    </tr>
</table>
</form>
</center>
</div>
</div>
<!--						<div class="col-2">
							<div class="block-news">
								<h3 class="color-4 p2">Recent News</h3>
								<div class="wrapper p2">
									<time class="tdate-1 fleft" datetime="2011-05-29"><strong>29</strong>may</time>
									<div class="extra-wrap">
										<h5>Utatse eudui pretium</h5> 
										sodales proin fermen<br>tum condimentum eros quis tincidunt fraesent eleifend tempor nisi, in adipiscing... <a href="#">more</a>
									</div>
								</div>
								<div class="wrapper">
									<time class="tdate-1 fleft" datetime="2011-05-24"><strong>24</strong>may</time>
									<div class="extra-wrap">
										<h5>Felis molestie vitae</h5> 
										Sed massa justo pellen<br>tesque turpis lorem, ornare sit amet vulpate at, consectetur vitae nunc... <a href="#">more</a>
									</div>
								</div>
							</div>
						</div>-->
					</div>
				</div>
			</section>
<!-- footer -->
			<footer>
				<div class="row-bot">
					<div class="aligncenter">
						<p class="p0">Website Designed by : <a><b>Goverdhan</b></a> || Under the Guidance of :  <a href="http://www.trylogic.in/">Trylogic Soft Solution AP Pvt Ltd</a></p>
						
						<!-- {%FOOTER_LINK} -->
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script type="text/javascript"> Cufon.now(); </script>
	<script type="text/javascript">
		$(function(){
			$('.slider')._TMS({
				prevBu:'.prev',
				nextBu:'.next',
				playBu:'.play',
				duration:800,
				easing:'easeOutQuad',
				preset:'simpleFade',
				pagination:false,
				slideshow:3000,
				numStatus:false,
				pauseOnHover:true,
				banners:true,
				waitBannerAnimation:false,
				bannerShow:function(banner){
					banner
						.hide()
						.fadeIn(500)
				},
				bannerHide:function(banner){
					banner
						.show()
						.fadeOut(500)
				}
			});
		})
	</script>
</body>
</html>
