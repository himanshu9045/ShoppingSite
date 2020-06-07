<%@page import="java.sql.*" %>
<%
    try
    {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if(email.equals("admin@gmail.com") && password.equals("123@123"))
        {
            session.setAttribute("admin", "Arpit");
            response.sendRedirect("getData.jsp");
        }
        else
        {
            Connection con = mypack.Mycon.getCon();
             email = request.getParameter("email");
              password = request.getParameter("password");
              PreparedStatement st = con.prepareStatement("select * from customer where email=? and password=?");
             st.setString(1, email);
             st.setString(2, password);
             st.executeQuery();
               ResultSet rs = st.executeQuery();
             if(rs.next())
               {
                int id = rs.getInt("id");
                session.setAttribute("id",id);
                response.sendRedirect("index.jsp");
               }      
             else
              {
                session.setAttribute("fail", "<p style='color:red;font-weight:bold;'>Sorry Login has failed.</p>");
                 response.sendRedirect("index.jsp");
               }
        }
    }
    catch(Exception ex)
    {
        out.println(ex);
    }
    %>
    <jsp:include page="header.jsp"/>