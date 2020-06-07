<jsp:useBean id="data" class="mypack.Save"/>
<jsp:setProperty name="data" property="*"/>
<%
  if(data.dataUpdate())
  {
       
      session.setAttribute("dataUpdate", "<p style='color:green;font-weight:bold;'>Data has been succesfully updated.</p>");
  }  
else
  {
          session.setAttribute("dataUpdate", "<p style='color:green;font-weight:bold;'>Error:"+data.getError()+"</p>");
  }
  response.sendRedirect("update.jsp?id="+data.getId());
%>