<%-- 
                                    <center>
                                        <h2>Update Profile !!</h2>
                                        <%
                                            String uid = (String) session.getAttribute("id");
                                            ResultSet rs = st.executeQuery("select * from user_details where uid='" + uid + "' ");
                                            if (rs.next()) {
                                        %>
                                        <form name="form" action="myprofileDB.jsp" method="post">
                                            <table border="1" style="background-color: lightblack; text-decoration-color: red">
                                                <tr>
                                                    <th align="right">USER_ID : </th>
                                                    <td><input type="text" name="uid" readonly value="<%=rs.getString(1)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">FIRST NAME :</th>
                                                    <td><input type="text" name="fname" required value="<%=rs.getString(2)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">LAST NAME : </th>
                                                    <td><input type="text" name="lname" required value="<%=rs.getString(3)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">EMAIL_ID : </th>
                                                    <td><input type="text" name="email" required value="<%=rs.getString(4)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">PASSWORD : </th>
                                                    <td><input type="password" name="pwd" required value="<%=rs.getString(5)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">D.O.B : </th>
                                                    <td><input type="date" name="dob" required value="<%=rs.getString(6)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">ADDRESS</th>
                                                    <td><input type="text" name="address" required value="<%=rs.getString(8)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">PHONE NO : </th>
                                                    <td><input type="tel" name="mobile" required value="<%=rs.getString(9)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
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