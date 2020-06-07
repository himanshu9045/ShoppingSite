<%@page import="java.sql.*" %>
<%
    try
    {
        Connection con = mypack.Mycon.getCon();
        int id = Integer.parseInt(request.getParameter("id"));
        PreparedStatement st = con.prepareStatement("select * from student where id=?");
        st.setInt(1, id);
        ResultSet rs = st.executeQuery();
        if(rs.next())
        {
            %>
            <html>
                <head>
                    <title>Hi <%=rs.getString("name")%> </title>
                   
                    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
                </head>
                <body>
                    <h2>Hello <%=rs.getString("name")%>, you can update information</h2></br>
                    <%
            if(session.getAttribute("picUpdate")!=null)
            {
                out.println((String)session.getAttribute("picUpdate"));
                session.removeAttribute("picUpdate");
            }
            if(session.getAttribute("dataUpdate")!=null)
            {
                out.println((String)session.getAttribute("dataUpdate"));
                session.removeAttribute("dataUpdate");
            }
            %>
                    <div class="row">
                        <div class="col-md-6">
                            <form action="updateData.jsp" method="post">
                                <input type="hidden" name="id" value="<%=rs.getInt("id")%>"/>
                           
                            <table class="table">
                                <tr>
                                    <td>Name</td>
                                    <td><input type="text" name="name" class="form-control" value="<%=rs.getString("name")%>"/></td>
                                    
                                </tr>
                                <tr>
                                    <td>Age</td>
                                    <td><input type="number" name="age"min="18" max="40" class="form-control" value="<%=rs.getInt("age")%>"/></td>
                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <td><input type="text" name="gender" class="form-control" value="<%=rs.getString("gender")%>"/></td>
                                    
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><input type="email" name="email" class="form-control" value="<%=rs.getString("email")%>"/></td>
                                    
                                </tr>
                                <tr>
                                    <td>Qualification</td>
                                    <td><input type="text" name="qualification" class="form-control" value="<%=rs.getString("qualification")%>"/></td>
                                    
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td><input type="text" name="address" class="form-control" value="<%=rs.getString("address")%>"/></td>
                                    
                                </tr>
                                <tr>
                                    <td  colspan="2"><input type="submit" value="Update" class="form-control btn-success"/></td>
                                </tr>
                            </table>
                                     </form>
                        </div>
                        <div class="col-md-6">
                            <img src="pic/<%=rs.getString("pic")%>" style="width: 300px; height: 300px;" class="img-rounded img-thumbnail"/>
                            <form action="updateImage.jsp" method="post">
                                <div style="width: 300px;">
                                    <input type="hidden" name="id" value="<%=rs.getInt("id")%>"/>
                                    <input type="file" name="pic" class="form-control"/><br/>
                                    <input type="submit" value="Update Image" class="form-control btn-primary"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </body>
                <a href="getData.jsp">Go Back</a>
            </html>       
            <%
        }
        else
        {
            out.println("Sorry data not found.");
        }
    }
    catch(Exception ex)
    {
        out.println(ex);
    }
    %>