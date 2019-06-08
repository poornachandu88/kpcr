<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib uri="http://www.springframework.org/tags/form" prefix="springform"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>



<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Locality Sensitive -${title}</title>

<!-- Bootstrap core CSS -->
<link href='<spring:url value="/resources/css/bootstrap.min.css"/>'
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href='<spring:url value="/resources/css/my.css"/>'
	rel="stylesheet">

</head>
<body>
<!-- NAV BAR -->
		
			
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="${contextRoot}/index">Locality</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${contextRoot}/home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${contextRoot}/admin">Admin</a>
            </li>
                    
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${contextRoot}/user">User</a>
            </li>
            
           </ul>
        </div>
      </div>
    </nav>


<!-- PAGE CONTENT -->



<c:if test="${AdminLogin==true}">

		<%@include file="adminlogin.jsp"%>

	</c:if>
	
	<c:if test="${UserLogin==true}">

		<%@include file="userlogin.jsp"%>

	</c:if>
		<c:if test="${UserForm==true}">

		<%@include file="newuser.jsp"%>

	</c:if>
	
 

	<h1 align="center" style="font-size: xx-large; color: maroon; ">${home}</h1>
	
	
	
	
	
<div id="foot">
<footer >
      <div >
        <p class="m-0 text-center text-white">Copyright &copy; poornachandu.org 2018</p>
      </div>
      
    </footer>
  
    </div>
    
  
  <!-- FOOTER  -->
	<script type="text/javascript"
		src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
	<script type="text/javascript"
		src='<spring:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
    
    
    
    
    
</body>
</html>

			