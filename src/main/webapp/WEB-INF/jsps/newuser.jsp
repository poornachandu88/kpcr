
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

                             <center>
                                        <h3>NEW USER REGISTRATION FORM !!!</h3><br><br>
                                        <form:form method="get"  modelAttribute="userDetails" action="newuser"  >
                                            <table border="1" style="background-color: lightblack; text-decoration-color: red">
                                                <tr>
                                                    <th align="right">USER_ID : </th>
                                                    <td> <form:input path="uid" /></td>
                                          
                                                <tr>
                                                    <th align="right">FIRST NAME :</th>
                                                    <td><form:input path="fname" /></td>
                                            
                                                <tr>
                                                    <th align="right">LAST NAME : </th>
                                                    <td><form:input path="lname" /></td>
                                               
                                                <tr>
                                                    <th align="right">EMAIL_ID : </th>
                                                    <td><form:input path="email" /></td>
                                             
                                                <tr>
                                                    <th align="right">PASSWORD : </th>
                                                    <td><form:input path="pwd" /></td>
                                            
                                               
                                                <tr>
                                                    <th align="right">D.O.B : </th>
                                                    <td><form:input path="dob" /></td>
                                             
                                                <tr>
                                                    <th align="right">GENDER : </th>
                                                    <td>
                                                       <form:radiobutton path="gender" value="male" /> Male
                                                       <form:radiobutton path="gender" value="female" /> Female
                                                    </td>
                                              
                                                <tr>
                                                    <th align="right">ADDRESS</th>
                                                    <td><form:textarea path="address"/></td>
                                             
                                                <tr>
                                                    <th align="right">PHONE NO : </th>
                                                    <td><form:input path="mobile"/></td>
                                             
                                                <tr>
                                                  <tr>
                                                    <th align="right">PHONE NO : </th>
                                                    <td><form:input path="status"/></td>
                                               
                                                <tr>
                                                    <th align="right">Upload Pic : </th>
                                                    <td><input type="file" name="pic" /></td>
                                              
                                                <tr>
                                                    <th align="right"></th>
                                                    <th>
                                                        <input type="submit" value="Register" />
                                                    
                                                    </th>
                                                </tr>
                                            </table>
                                        </form:form>
                                        <br></br>
                                    </center>
