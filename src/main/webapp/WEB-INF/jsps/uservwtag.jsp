<%-- 
                                    <h2>View Tags !</h2>

                                    <center><table>
                                            <tr><th>Name</th><th>Image</th><th>Your Tag</th></tr><tr><th colspan="3"><hr></th></tr>
                                            <%
                                                String uid = (String) session.getAttribute("id");
                                                ResultSet r1 = st.executeQuery("select * from  addtag,image where uid='" + uid + "' and image.id=addtag.pid");
                                                while (r1.next()) {%>
                                            <tr>
                                                <th><%=r1.getString(3)%></th>
                                                <th><img src="pic/<%=r1.getString(11)%>" height="70" width="100"></th>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;<%=r1.getString(3)%> </td>
                                            </tr><tr><td>`</td></tr>
                                            <%}%>
                                            <tr><th><br></th></tr>
                                        </table>
                                    </center>


             
 --%>