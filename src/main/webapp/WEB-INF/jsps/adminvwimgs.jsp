<%-- 
					<nav>
						<ul class="menu">
						  <li><a href="adminhome.jsp">Home</a></li>
						  <li><a href="adminupload.jsp">Upload</a></li>
						  <li><a class="active" href="adminvwimgs.jsp">Images</a></li>
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
<div class="col-3">
<div class="indent">
    <%@include file="jdbc.jsp" %>
<h2>View Images !!!</h2>


<%
String val = request.getParameter("val");
if(val != null){%>
<center><table>
    <tr></tr>
<%    ResultSet r1 = st.executeQuery("select * from image where name like '%"+val+"%' or category like '%"+val+"%'");
    while(r1.next()){%>
        
    <tr><th><%=r1.getString(2)%></th><td><img src="pic/<%=r1.getString(8)%>" height="150" width="200"></td><td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="adminupdateimg.jsp?id=<%=r1.getString(1)%>">Update</a></td></tr>
    <tr><td>&nbsp;</td></tr>
    <%}%>
    <tr></tr>
</table></center>
<%}else{out.println("No data Found.");%>
<!--<script>alert("No data Found.");</script>-->

<%}%>
</div>
</div>
<div class="col-2"><br><br>
<form  action="adminvwimgs.jsp" method="get" >
<fieldset>
    <div >	
        <input list="browsers" type="search" name="val" placeholder="Enter Image Type "  />
        <input type="submit" value="Search" >
        <datalist id="browsers">
                  <option value="Firefox"></option>
<%
ResultSet r2 = st.executeQuery("select name,category from image");  
while(r2.next()){%>
<option value="<%=r2.getString(1)%>"></option>
<option value="<%=r2.getString(2)%>"></option>
<%}%>
        </datalist>
    </div>
</fieldset>
</form>
                                                          
 --%>