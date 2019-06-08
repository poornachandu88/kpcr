<%-- <%@page import="java.sql.PreparedStatement"%>
<%@include file="jdbc.jsp" %>
<%
String uid = request.getParameter("uid");

 String fname=request.getParameter("fname");
 String lname=request.getParameter("lname");
 String email=request.getParameter("email");
 String pwd=request.getParameter("pwd");
 String dob=request.getParameter("dob");
 String address=request.getParameter("address");
 String mobile=request.getParameter("mobile");
 String sql="update user_details set fname=?,lname=?,email=?,pwd=?,dob=?,address=?,mobile=? where uid=? ";
 PreparedStatement ps=con.prepareStatement(sql);
 
 ps.setString(1, fname);
 ps.setString(2, lname);
 ps.setString(3, email);
 ps.setString(4, pwd);
 ps.setString(5, dob);
 ps.setString(6, address);
 ps.setString(7, mobile);
 ps.setString(8, uid);
 try{
 int i=ps.executeUpdate();
      if(i>0)
         {
          %><script>
              alert("Update Successfull...");
              window.location="userhome.jsp";
          </script><%
         }
   }catch(Exception e)
         {
           %><script>
              alert("Updatation Failed. Please Try Again.");
              window.location="userhome.jsp";
          </script><%
         }
 
 %>
           --%>