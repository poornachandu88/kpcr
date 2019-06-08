<%-- 

<%
String val = request.getParameter("val");
%>
<a href="usersearch.jsp?val=<%=val%>"><h1>Back</h1></a><br>
<%
String pid = request.getParameter("pid");
String pic = request.getParameter("pic");
int rank = Integer.parseInt(request.getParameter("rank"))+1;

int k = st.executeUpdate(" update image set rank='"+rank+"' where id='"+pid+"'");
if(k>0){
%><img src="pic/<%=pic%>"><%
}else{

}
%>

 --%>