
				<div class="row-2">
					<nav>
						<ul class="menu">
						  <li><a href="adminhome.jsp">Home</a></li>
						  <li><a href="adminupload.jsp">Upload</a></li>
						  <li><a href="adminvwimgs.jsp">Images</a></li>
						  <li><a href="adminviewuser.jsp">Users</a></li>
						  <li><a class="active" href="admingraph.jsp">Graph</a></li>
						  <li class="last-item"><a href="adminlogin.jsp">Logout</a></li>
						</ul>
					</nav>
				</div>
				
			
<font color="white">
<!--    <h2>View  Graph</h2>-->
<%
String val = request.getParameter("val");
if(val == null){
%>
<center>
<form action="admingraph.jsp">
    Select one : <select name="val" required>
        <option value="">-- Select --</option>
        <option value="category">Category</option>
        <option value="top10">Top 10</option>
</select>
    <input type="submit" value="Show Graph">
</form>
</center>
<%}else if(val.equals("top10")){%>
<center>     
        <p>
            The Generated Bar Chart is : 

        <img src="BarChart"/>
        </p>
</center>
<%}else if(val.equals("category")){%>  
<center>     
        <p>
            The Generated Bar Chart is : 

        <img src="BarChart1"/>
        </p>
</center>
<%}%>
</div>
</div>
					