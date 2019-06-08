<%-- 

<h2>Add a tag to Image !!!</h2>
      
<%
String val = request.getParameter("val");
if(val != null){String type="";%>
<center><table>
        <tr><th></th><th></th><th></th></tr>
<%    ResultSet r1 = st.executeQuery("select * from image where name like '%"+val+"%' or category like '%"+val+"%'");
    while(r1.next()){type=r1.getString(3);%>
    <form action="useraddtagDB.jsp"><tr>
        <th><img src="pic/<%=r1.getString(8)%>" height="70" width="100"></th>
        <td>&nbsp;&nbsp;</td><td>
            <input type="text" name="tag" >
            <input type="hidden" name="pid" value="<%=r1.getString(1)%>">
        </td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="Add">
        </td>
    </tr></form>
    <%}%>
    <tr><th><br></th></tr>
</table>
</center>
<br><br>
<%}else{//out.println("No data Found.");%>
<!--<script>alert("No data Found.");</script>-->

<%}%>
</div>
</div>
<div class="col-2"><br><br>
<form  action="useraddtag.jsp" method="get" >
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
</form> --%>