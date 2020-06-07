<jsp:useBean id="del" class="mypack.Save"/>
<jsp:setProperty name="del" property="*"/>
<%
  if(del.delete())
  {
     session.setAttribute("delete","<p style='color:green;font-weight:bold;'>Data has been Deleted.</p>" );
  }  
else
  {
      session.setAttribute("delete",  "<p style='color:green;font-weight:bold;'>Error:"+del.getError()+" </p>");
  }
  response.sendRedirect("getData.jsp");
%>