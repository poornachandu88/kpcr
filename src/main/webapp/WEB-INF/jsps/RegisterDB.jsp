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
FileItem f1=(FileItem)list.get(1);
FileItem f2=(FileItem)list.get(2);
FileItem f3=(FileItem)list.get(3);
FileItem f4=(FileItem)list.get(4);
FileItem f5=(FileItem)list.get(5);
FileItem f6=(FileItem)list.get(6);
FileItem f7=(FileItem)list.get(7);
FileItem f8=(FileItem)list.get(8);
FileItem f9=(FileItem)list.get(9);
FileItem f10=(FileItem)list.get(10);

 String uid = f0.getString();
 String fname=f1.getString();
 String lname=f2.getString();
 String email=f3.getString();
 String pwd=f4.getString();
 String dob=f6.getString();
 String gender=f7.getString();
 String address=f8.getString();
 String mobile=f9.getString();
 String picname=f10.getName();
 String pic=f10.getString(); 


String s = "select * from user_details where uid='"+uid+"'";
ResultSet r1 = st.executeQuery(s);
if(r1.next()){
%><script>
    alert("User Already Exist. Try with Different Inputs.");
    window.location="newuser.jsp";
</script><%
}else{

String path=application.getRealPath("userprofile")+"\\"+picname;
File f=new File(path); 
f10.write(f); 
    
    
 String sql="insert into user_details values(?,?,?,?,?,?,?,?,?,?,?)";
 PreparedStatement ps=con.prepareStatement(sql);
 ps.setString(1,uid);
 ps.setString(2,fname);
 ps.setString(3,lname);
 ps.setString(4,email);
 ps.setString(5,pwd);
 ps.setString(6,dob);
 ps.setString(7,gender);
 ps.setString(8,address);
 ps.setString(9,mobile);
 ps.setString(10,"inactive");
 ps.setString(11,picname);
 try{
 int i=ps.executeUpdate();
      if(i>0)
         {
          %><script>
              alert("Registration Successfull...");
              window.location="userlogin.jsp";
          </script><%
         }
   }catch(Exception e)
         {
           %><script>
              alert("Registration Failed. Please Try Again.");
              window.location="newuser.jsp";
          </script><%
         }
 }
 %>
           --%>