<%-- 
                                    <center>
                                        <h2>Change Profile Pic!!</h2>
                                        <%
                                            String uid = (String) session.getAttribute("id");
                                            ResultSet rs = st.executeQuery("select * from user_details where uid='" + uid + "' ");
                                            if (rs.next()) {
                                        %>
                                        <form name="form" action="profilepic2.jsp" method="post" enctype="multipart/form-data">
                                            <table border="1" style="background-color: lightblack; text-decoration-color: red">
                                                <tr>
                                                    <th align="center" colspan="2">
                                                        <img src="userprofile\<%=rs.getString(11)%>" height="170" width="185">
                                                    </th>
                                               </tr><tr><td>&nbsp;</td></tr>
                                               <tr>
                                                    <th align="right">Upload New Pic : </th>
                                                    <td><input type="file" name="pic" required/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                <tr>
                                                    <th align="right"></th>
                                                    <th>
                                                        <input type="submit" value="Update" />
                                                    </th>
                                                </tr>
                                            </table>
                                        </form>
                                        <%}%>
                                    </center>
 --%>