<%-- 
                  
                            <center><h2>Search Image </h2><br><br>
                                <form  action="usersearch.jsp" method="get" >
                                    <fieldset>
                                        <div >	
                                            <input list="browsers" type="search" name="val" placeholder="Enter Image Type " required />
                                            <input type="submit" value="Search" required="">
                                            <datalist id="browsers">
                                                <option value="Firefox"></option>
                                                <%
                                                    ResultSet r2 = st.executeQuery("select name,category from image");
                                                    while (r2.next()) {%>
                                                <option value="<%=r2.getString(1)%>"></option>
                                                <option value="<%=r2.getString(2)%>"></option>
                                                <%}%>
                                            </datalist>
                                        </div>
                                    </fieldset>
                                </form>

                                <%

                                    String impval = request.getParameter("impval");
                                    if (impval != null) {
                                        String type = request.getParameter("type");
                                        if(type.equals("")){out.println("No Related Data Found");}else{
                                %>
                                <center><table>
                                        <tr><th></th></tr>
                                        <%    ResultSet rs = st.executeQuery("select * from image where type like '%" + type + "%' or name like '%" + impval + "%' or category like '%" + impval + "%'");
                                            while (rs.next()) {
                                                String i = rs.getString(1);%>
                                        <tr><th><img src="pic/<%=rs.getString(8)%>" height="100" width="150"></th></tr><tr><th>`</th></tr>
                                                <%
                                                        int rnk = rs.getInt(9);
                                                        rnk = rnk + 1;
                                                        //st.executeUpdate("update image set rank="+rnk+" where id='"+i+"'");

                                                    }%>
                                        <tr><th>`</th></tr>
                                    </table>
                                </center> 

                                <%}} else {
                                    String val = request.getParameter("val");
                                    if (val != null) {
                                        String type = "";%>
                                <center><table>
                                        <tr><th></th><th></th></tr>
                                        <%    ResultSet r1 = st.executeQuery("select * from image where name like '%" + val + "%' or category like '%" + val + "%'");
                                            while (r1.next()) {
                                                type = r1.getString(3);
                                        %>
                                        <tr><th><b><%=r1.getString(2)%></b>&nbsp;&nbsp;&nbsp;</th>
                                            <th><a href="userviewimage.jsp?pid=<%=r1.getString(1)%>&rank=<%=r1.getInt(9)%>&pic=<%=r1.getString(8)%>&val=<%=val%>">
                                                    <img src="pic/<%=r1.getString(8)%>" height="150" width="200">
                                                </a>
                                            </th></tr>
                                        <tr><th>&nbsp;</th></tr>
                                        <tr><th></th>
                                            <td>
                                                <form action="useraddtagDB.jsp">&nbsp;&nbsp;
                                                    <input type="text" name="tag" required="" placeholder="Enter your tag">
                                                    &nbsp;&nbsp;
                                                    <input type="hidden" name="pid" value="<%=r1.getString(1)%>">
                                                    <input type="hidden" name="val" value="<%=val%>">
                                                    <input type="submit" value="Add">
                                                </form>
                                            </td>
                                        </tr>
                                        <tr><th>&nbsp;</th></tr>
                                            <%}%>
                                            <tr><th></th><th></th></tr>
                                        <%    ResultSet r3 = st.executeQuery("SELECT * FROM addtag at, image im where at.message like '%"+val+"%' and at.pid=im.id");
                                            while (r3.next()) {
                                                type = r3.getString(6);
                                        %>
                                        <tr><th><b><%=r3.getString(5)%></b>&nbsp;&nbsp;&nbsp;</th>
                                            <th><a href="userviewimage.jsp?pid=<%=r3.getString(2)%>&rank=<%=r3.getInt(12)%>&pic=<%=r3.getString(8)%>&val=<%=val%>">
                                                    <img src="pic/<%=r3.getString(11)%>" height="150" width="200">
                                                </a>
                                            </th></tr>
                                        <tr><th>&nbsp;</th></tr>
                                        <tr><th></th>
                                            <td>
                                                <form action="useraddtagDB.jsp">&nbsp;&nbsp;
                                                    <input type="text" name="tag" required="" placeholder="Enter your tag">
                                                    &nbsp;&nbsp;
                                                    <input type="hidden" name="pid" value="<%=r3.getString(2)%>">
                                                    <input type="hidden" name="val" value="<%=val%>">
                                                    <input type="submit" value="Add">
                                                </form>
                                            </td>
                                        </tr>
                                        <tr><th>&nbsp;</th></tr>
                                            <%}%>
                                        <tr><th>&nbsp;</th></tr>
                                    </table>
                                </center>
                                <br><br><a href="usersearch.jsp?impval=<%=val%>&type=<%=type%>">View Related Images</a>
                                <%} else {//out.println("No data Found.");%>
                                <!--<script>alert("No data Found.");</script>-->

                                <%}
                                    }%> 
                               
          --%>