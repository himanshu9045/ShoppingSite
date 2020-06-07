

<html>
    <head>
        <title>Welcome in JavaBean</title>
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
    </head>
    <body>
             <header>
            <jsp:include page="header.jsp"/>
        </header>
        <h2>Login here</h2></br>
                <%
            if(session.getAttribute("fail")!=null)
            {
                out.println((String)session.getAttribute("fail"));
                session.removeAttribute("fail");
            }
            %> 
        <form action="login.jsp" method="post">
            <table class="table" style="width:50%;">
                <tr>
                    <td>
            Enter Email
                    </td>
                    <td>
            <input type="email" name="email" required="required" class="form-control"></td>
                </tr>
                <tr>
                    <td>
            Enter Password
                    </td>
                    <td>
            <input type="password" name="password" class="form-control"></td>
                </tr>
                <tr>
                    <td colspan="2">
            <input type="submit" value="login" class="form-control btn-success">
                    </td></tr>
            
            </table>
        
        </form>
    </body>

<a href="index.jsp">Home</a>