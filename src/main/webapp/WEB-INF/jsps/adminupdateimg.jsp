<%-- 
					<nav>
						<ul class="menu">
						  <li><a class="active" href="adminhome.jsp">Home</a></li>
						  <li><a href="adminupload.jsp">Upload</a></li>
						  <li><a href="adminvwimgs.jsp">Images</a></li>
						  <li><a href="adminupdateimg.jsp">Update</a></li>
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
<h2>Update Image Details</h2>
<%
String id = request.getParameter("id");
ResultSet r1 = st.executeQuery("select * from image where id='"+id+"' ");
if(r1.next()){%>
<form action="adminupdateimg2.jsp" method="post" >
<table>
    <tr>
        <th>Image ID</th>
<td><input type="text" name="id" value="<%=r1.getString(1)%>"readonly/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Name</th>
        <td><input type="text" name="name" value="<%=r1.getString(2)%>" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Type</th>
        <td><input type="text" name="type" value="<%=r1.getString(3)%>" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Category</th>
        <td><input type="text" name="category" value="<%=r1.getString(4)%>" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Description</th>
        <td><input type="text" name="description" value="<%=r1.getString(5)%>" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>color</th>
        <td><input type="text" name="color" value="<%=r1.getString(6)%>" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    <tr>
        <th>Characteristics</th>
        <td><input type="text" name="characterstic" value="<%=r1.getString(7)%>" required/></td>
    </tr><tr><th></th><th>`</th></tr>
    
    <tr>
        <th></th>
        <td><input type="submit"  value="Update"/></td>
    </tr>
</table>
</form>

<%}%>
    
</div>
</div>
 --%>