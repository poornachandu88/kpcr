<%-- <%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="jdbc.jsp" %>
<%
DiskFileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload sfu=new ServletFileUpload(factory);
List list=sfu.parseRequest(request);

FileItem f0=(FileItem)list.get(0);

 String pic = f0.getName(); System.out.println(pic);
 String uid = (String) session.getAttribute("id");


String path=application.getRealPath("userprofile")+"\\"+pic;
File f=new File(path); 
f0.write(f); 
    
    
 String sql="update user_details set pic=? where uid=?";
 PreparedStatement ps=con.prepareStatement(sql);
 ps.setString(1,pic);
 ps.setString(2,uid);
 try{
 int i=ps.executeUpdate();
      if(i>0)
         {
          %><script>
              alert("Profile Pic Changed.");
              window.location="userhome.jsp";
          </script><%
         }
   }catch(Exception e)
         {
           %><script>
              alert("Server Busy. Please Try Again.");
              window.location="userhome.jsp";
          </script><%
         }

 %>
           --%>