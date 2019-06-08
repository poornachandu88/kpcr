<%-- 
<%@include file="jdbc.jsp" %>
<%
String id = (String) session.getAttribute("id");
String pid = request.getParameter("pid");
String val = request.getParameter("val");
String tag = request.getParameter("tag");
try{
int k = st.executeUpdate("insert into addtag values('"+id+"','"+pid+"','"+tag+"')");
if(k>0){%>
<script>alert("Your Tag added Successfully.");window.location="useraddtag.jsp";</script>
<%}else{response.sendRedirect("useraddtag.jsp");
}
}catch(Exception e){e.printStackTrace();%>
<script>alert("Some Problem Occure.");window.location="usersearch.jsp?val=<%=val%>";</script>
<%}
%> --%>