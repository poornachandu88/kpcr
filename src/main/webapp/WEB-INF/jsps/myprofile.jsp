<%-- 
                        <nav>
                            <ul class="menu">
                                <li><a href="userhome.jsp">Home</a></li>
                                <li><a href="usersearch.jsp">Search</a></li>
<!--                                <li><a href="useraddtag.jsp">AddTag</a></li>-->
                                <li><a href="uservwtag.jsp">ViewTag</a></li>
                                <li><a class="active" href="myprofile.jsp">Profile</a></li>
                                <li class="last-item"><a href="userlogin.jsp">Logout</a></li>
                            </ul>
                        </nav>
                    </div>
         
                   

                                    <center>
                                        <h2>Update Profile !!</h2>
                                        <%
                                            String uid = (String) session.getAttribute("id");
                                            ResultSet rs = st.executeQuery("select * from user_details where uid='" + uid + "' ");
                                            if (rs.next()) {
                                        %>
                                        <form name="form" action="myprofile2.jsp" method="post">
                                            <table border="1" style="background-color: lightblack; text-decoration-color: red">
                                                <tr>
                                                    <th align="center" colspan="2">
                                                        <a href="profilepic.jsp">
                                                        <img src="userprofile\<%=rs.getString(11)%>" height="170" width="185">
                                                        </a>
                                                    </th>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">USER_ID : </th>
                                                    <td><input type="text" name="uid"  readonly="" value="<%=rs.getString(1)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">FIRST NAME :</th>
                                                    <td><input type="text" name="fname"  readonly="" value="<%=rs.getString(2)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">LAST NAME : </th>
                                                    <td><input type="text" name="lname"  readonly="" value="<%=rs.getString(3)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">EMAIL_ID : </th>
                                                    <td><input type="text" name="email"  readonly="" value="<%=rs.getString(4)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">PASSWORD : </th>
                                                    <td><input type="password" name="pwd"  readonly="" value="<%=rs.getString(5)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">D.O.B : </th>
                                                    <td><input type="date" name="dob"  readonly="" value="<%=rs.getString(6)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">ADDRESS</th>
                                                    <td><input type="text" name="address"  readonly="" value="<%=rs.getString(8)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right">PHONE NO : </th>
                                                    <td><input type="tel" name="mobile" readonly="" value="<%=rs.getString(9)%>"/></td>
                                                </tr><tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <th align="right"></th>
                                                    <th>
                                                        <input type="submit" value="Edit" />
                                                    </th>
                                                </tr>
                                            </table>
                                        </form>
                                        <%}%>
                                    </center>
 --%>