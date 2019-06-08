<%--  <%@page import="java.io.File"%> 
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%> 
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String type = request.getParameter("type");
String category = request.getParameter("category");
String description = request.getParameter("description");
String color = request.getParameter("color");
String characterstic = request.getParameter("characterstic");

//String dt = new SimpleDateFormat("dd-MMM-yyyy").format(Calendar.getInstance().getTime());
String sql = "update image set name=?,type=?,category=?,description=?,color=?,charecterstic=? where id='"+id+"'";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, type);
ps.setString(3, category);
ps.setString(4, description);
ps.setString(5, color);
ps.setString(6, characterstic);

try{
int j = ps.executeUpdate();
if(j>0){
%><script>
    alert("Image File Data Updated successfully... ");
    window.location="adminhome.jsp";
</script><%
}}catch(Exception e){System.out.println(e);
%><script>
    alert("Some Proble Occure. Try with different ID.");
    window.location="adminhome.jsp";
</script><%
}%> --%>