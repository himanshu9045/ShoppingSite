<%@page import="java.sql.*" %>
<html>
    <head>
        <title>All Products</title>
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
    </head>
    <body>
      <header>
            <jsp:include page="header.jsp"/>
        </header>
        <h2>Current Product Information</h2>
        
        <table class="table">
            <tr>
                <th>Sr.</th><th>brand</th><th>model</th><th>RAM</th><th>Processer</th><th>Display</th><th>Battery</th><th>Camera</th><th>Memory</th><th>Sim Type</th><th>warrenty</th><th>Price</th><th>Option</th>
            </tr>
            <%
               try
               {
                   int i=1;
                    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emart","root","");
       Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("select * from product order by brand");
       while(rs.next())
       {
           %>
           <tr>
               <td><%=i%></td>
               <td><img src="pic/<%=rs.getString("pic")%>" style="width: 50px; height: 50px;"/></td>
               <td><%=rs.getString("brand")%></td>
               <td><%=rs.getString("model")%></td>
               <td><%=rs.getString("ram")%></td>
               <td><%=rs.getString("processer")%></td>
               <td><%=rs.getString("display")%></td>
               <td><%=rs.getString("battery")%></td>
                <td><%=rs.getString("camera")%></td>
                 <td><%=rs.getString("memory")%></td>
                  <td><%=rs.getString("sim")%></td>
                   <td><%=rs.getString("warranty")%></td>
                    <td><%=rs.getInt("price")%></td>
           </tr>   
           <%
           i++;
       }
               }
               catch(Exception ex)
               {
                   out.println(ex);
               }
                %>
        </table>
        <a href="upload.jsp">Register Here</a></br>
        <a href="logout.jsp">Logout</a>
        <jsp:include page="footer.jsp"/>
        </html>
    </body>
</html>