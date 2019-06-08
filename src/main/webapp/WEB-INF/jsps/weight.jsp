<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Vehicle Sales & Purchase</title>


<link rel="stylesheet" href="css/reset.css" type="text/css" />
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">


<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/custom.js"></script>

<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />

<!--
deiform, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
</head>
<body>
<div id="container" class="width">

    <header> 
	<div class="width">

    		<h1><a href="/">VSPIM</a></h1>

		<nav>
	
    			<ul class="sf-menu dropdown">
                                <li><a href="adminhome.jsp">Home</a></li>
            			<li> <a href="viewrequsers.jsp">View Requested Users</a> </li>
                                <li><a href="addvehicles.jsp">Add vehicles</a></li>
                                <li><a href="viewvehicles.jsp">View vehicles</a></li>
				<li><a href="logout.jsp">Logout</a></li>
       			</ul>

			
			<div class="clear"></div>
    		</nav>
       	</div>

	<div class="clear"></div>

       
    </header>


    <div id="intro">

	<div class="width">
      
		<div class="intro-content">
	
                    <h2>Vehicle Sales ,Purchase and </h2>
                    <p>Inventory Management</p>                      	
		
                    

            	</div>
                
            </div>
            

	</div>

    <div id="body" class="width">



		<section id="content" class="two-column with-right-sidebar">

<article>
    <font color="white">
    <h2>View  Graph</h2>
<center>     
        <p>
            The Generated Bar Chart is : 

        <img src="BarChart"/>
        </p>

    		 
        </section>
        
        <aside class="sidebar big-sidebar right-sidebar">
	
	
            <ul>	
               <li>
                    <ul class="blocklist">
                        <li><a  href="adminhome.jsp">Home</a></li>
                       
				 <ul>
                                        <li><a href="viewinvdet.jsp">View The Inventory Details</a></li>
                                        <li class="selected"><a href="graph.jsp">View Profit & Loss Graph</a></li>
				</ul>
			</li>
                        
                        
                    </ul>
                </li>
                
               

		
               
              
   		 
                
            </ul>
		
        </aside>
    	<div class="clear"></div>
    </div>
</div>
 <footer>Copyright &copy; 2016 | <a href="#">Vehicle Sales & Purchase</a> | Design by @<samp style="color:#ff6600; font-family: AR DELANEY;font-size: 19px">SVIT-Batch N0:9A</samp></footer>
    
</body>
</html>
             