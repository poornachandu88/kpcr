<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib uri="http://www.springframework.org/tags/form" prefix="springform"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>



					<nav>
						<ul class="menu">
						  <li><a class="active" href="${contextRoot}/home">Home</a></li>
						  <li><a href="${contextRoot}/uploadimage">Upload</a></li>
						  <li><a href="${contextRoot}/adminview">Images</a></li>
						  <li><a href="${contextRoot}/adminviewuser">Users</a></li>
						  <li><a href="${contextRoot}/viewgraph">Graph</a></li>
						  <li class="last-item"><a href="${contextRoot}/adminlogintest">Logout</a></li>
						</ul>
					</nav>
				
		
<h2>WELCOME ADMIN !!!</h2>

		${adminsuccess}