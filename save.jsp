<jsp:useBean id="s1" class="mypack.Save"/>
<jsp:setProperty name="s1" property="*"/>
<%
  if(s1.createTable())
  {
      session.setAttribute("save", "<p style='color:green;font-weight:bold;'>Registration has successfully completed.</p>");
  }  
else
  {
        session.setAttribute("save", "<p style='color:red;font-weight:bold;'>Error : "+s1.getError()+"</p>");
  }
  response.sendRedirect("upload.jsp");
%>
