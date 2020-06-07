<jsp:useBean id="pic" class="mypack.Save"/>
<jsp:setProperty name="pic" property="*"/>
<%
  if(pic.picUpdate())
  {
       
      session.setAttribute("picUpdate", "<p style='color:green;font-weight:bold;'>Image has been succesfully updated.</p>");
  }  
else
  {
          session.setAttribute("picUpdate", "<p style='color:green;font-weight:bold;'>Error:"+pic.getError()+"</p>");
  }
  response.sendRedirect("update.jsp?id="+pic.getId());
%>