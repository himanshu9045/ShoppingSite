<%@page import="java.sql.*" %>
<%
    try
    {
        Connection con = mypack.Mycon.getCon();
        int id = Integer.parseInt(request.getParameter("id"));
        PreparedStatement st = con.prepareStatement("select * from product where id=?");
        st.setInt(1, id);
        ResultSet rs = st.executeQuery();
        if(rs.next())
        {
            %>
            <html>
                <head>
                    <title> <%=rs.getString("brand")%>  <%=rs.getString("model")%> </title>
                   
                    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
                    <script src="js/bootstrap.min.js" type="text/javascript"></script>
                    <script src="js/jquery.min.js" type="text/javascript"></script>
                </head>
                <body>
                    <header>
                        <jsp:include page="header.jsp"/>
                    </header>
                    
                    <h2><%=rs.getString("brand")%>  <%=rs.getString("model")%></h2></br>
                                    <div class="row" >
                        <div class="col-md-6">
                            <table border="3"style="border-color: blue;" class="table">
                                <tr>
                                    <td>brand</td>
                                    <td><%=rs.getString("brand")%></td>
                                    
                                </tr>
                                <tr>
                                    <td>model</td>
                                    <td><%=rs.getString("model")%></td>
                                </tr>
                                <tr>
                                    <td>Ram</td>
                                    <td><%=rs.getString("ram")%></td>
                                    
                                </tr>
                                <tr>
                                    <td>Processer</td>
                                    <td><%=rs.getString("processer")%></td>
                                    
                                </tr>
                                <tr>
                                    <td>Display</td>
                                    <td><%=rs.getString("display")%></td>
                                    
                                </tr>
                                <tr>
                                 <td>Camera</td>
                                    <td><%=rs.getString("camera")%></td>
                                    
                                </tr>
                                <tr>
                                 <td>Internal Memory</td>
                                    <td><%=rs.getString("memory")%></td>
                                    
                                </tr>
                                
                                <tr> <td>Sim Type</td>
                                    <td><%=rs.getString("sim")%></td>
                                    
                                </tr>
                                
                                <tr> <td>Battery</td>
                                    <td><%=rs.getString("battery")%></td>
                                    
                                </tr>
                                
                                <tr> <td>Warranty</td>
                                    <td><%=rs.getString("warranty")%></td>
                                    
                                </tr>
                                <tr>
                                    <td>Price</td>
                                    <td><%=rs.getInt("price")%></td>
                                    
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-6">
                            <img src="pic/<%=rs.getString("pic")%>" style="width: 300px; height: 300px;" class=" img-thumbnail"/>
                        </div>
                    </div>
                   
                </body>
                
                <a href="index.jsp">Home</a>
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