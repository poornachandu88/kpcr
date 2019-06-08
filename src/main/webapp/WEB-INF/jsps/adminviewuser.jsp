<%-- 
					<nav>
						<ul class="menu">
						  <li><a href="adminhome.jsp">Home</a></li>
						  <li><a href="adminupload.jsp">Upload</a></li>
						  <li><a href="adminvwimgs.jsp">Images</a></li>
						  <li><a class="active" href="adminviewuser.jsp">Users</a></li>
						  <li><a href="admingraph.jsp">Graph</a></li>
						  <li class="last-item"><a href="adminlogin.jsp">Logout</a></li>
						</ul>
					</nav>
				</div>
			
    
<center>
<h2>Viewing User Request Details  !!!</h2>
<%
String uid = request.getParameter("uid");
if(uid != null){
    int k = st.executeUpdate("update user_details set status='active' where uid='"+uid+"'");
       if(k>0){%><script>alert("User Acceptd Successfully.");window.location="adminviewuser.jsp";</script><%}
}else{
%>
<table border="1">
    <tr>
        <th>ID </th>
        <th>NAME</th>
        <th>EMAIL </th>
        <th>ADDRESS </th>
        <th>ACCEPTANCE</th>
    </tr>
<%
ResultSet r1 = st.executeQuery("select * from user_details where status='inactive'");
while(r1.next()){%>
<tr>
    <td><%=r1.getString(1)%></td>
    <td><%=r1.getString(2)%></td>
    <td><%=r1.getString(4)%></td>
    <td><%=r1.getString(8)%></td>
    <td><a href="adminviewuser.jsp?uid=<%=r1.getString(1)%>">ACCEPT</a></td>
</tr>
<%}%>  
</table>
<%}%>
<br></br><h2>Viewing All User Details  !!!</h2>
<table style="border: 1;">
    <tr>
        <th>ID </th>
        <th>NAME</th>
        <th>EMAIL </th>
        <th>ADDRESS </th>
        <th>STATUS</th>
    </tr>
<%
ResultSet r1 = st.executeQuery("select * from user_details ");
while(r1.next()){%>
<tr>
    <td><%=r1.getString(1)%></td>
    <td><%=r1.getString(2)%></td>
    <td><%=r1.getString(4)%></td>
    <td><%=r1.getString(8)%></td>
    <td><%=r1.getString(10)%></td>
</tr>
<%}%>  
</table>
</center>
    
</div>
</div>
 --%>