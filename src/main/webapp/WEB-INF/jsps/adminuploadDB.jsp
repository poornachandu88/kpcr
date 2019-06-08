<%--  <%@page import="java.io.File"%>
<%@page import="java.util.Random"%> 
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%> 
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="jdbc.jsp" %>
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%
String id =(String) session.getAttribute("id");
DiskFileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload sfu=new ServletFileUpload(factory);
List list=sfu.parseRequest(request);

FileItem f1=(FileItem)list.get(0); //id
FileItem f2=(FileItem)list.get(1); //name
FileItem f3=(FileItem)list.get(2); //type
FileItem f4=(FileItem)list.get(3); //category
FileItem f5=(FileItem)list.get(4); //description
FileItem f6=(FileItem)list.get(5); //color
FileItem f7=(FileItem)list.get(6); //characterstic
FileItem f8=(FileItem)list.get(7); //pic

String picid = f1.getString();
String name = f2.getString();
String type = f3.getString();
String category = f4.getString();
String description = f5.getString();
String color = f6.getString();
String characterstic = f7.getString();
String pic =f8.getName();

String path1=request.getRealPath("pic")+"\\"+pic;
//File f=new File(path1); 
f8.write(new File(path1));

//String dt = new SimpleDateFormat("dd-MMM-yyyy").format(Calendar.getInstance().getTime());
String sql = "insert into image values(?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, picid);
ps.setString(2, name);
ps.setString(3, type);
ps.setString(4, category);
ps.setString(5, description);
ps.setString(6, color);
ps.setString(7,characterstic);
ps.setString(8, pic);
ps.setInt(9, 1);

try{
int j = ps.executeUpdate();
if(j>0){
%><script>
    alert("Image File uploaded successfully... ");
    window.location="adminupload.jsp";
</script><%
}}catch(Exception e){System.out.println(e);
%><script>
    alert("This File ID Already Exist. Try with different ID.");
    window.location="adminhome.jsp";
</script><%
}%> --%>