<html>
    <head>
        <title>Welcome in java bean</title>
        <link href="css/bootstrap.min.css" type="text/css"rel="stylesheet" />
        <script src="js/bootstrap.min.js"type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        
    </head>
    <body>
        <h2>Registration form</h2></br>
        <%
            if(session.getAttribute("save")!=null)
            {
                out.println((String)session.getAttribute("save"));
                session.removeAttribute("save");
            }
            %>
        <form action="save.jsp" method="post">
            <table class="table"style="width:50%;border-style: double;" >
                <tr>
                    <td>
                        Enter Name</td>
                    <td><input type="text"name="name" required="required" class="form-control"/></td>
                </tr>
                <tr>
                    <td>
                        Enter Age
                        
                    </td>
                    <td>
                        <input type="number"name="age" min="18" max="40" class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>Gender
                </td>
                <td><input type="radio" name="gender" value="male">Male
                <input type="radio"name="gender" value="female">Female</td>
                
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email"name="email" required="required"class="form-control"/></td>
                </tr>
                <tr>
                    <td>
                        Password
                    </td>
                    <td><input type="password"name="password"class="form-control"/></td>
                </tr>
                <tr>
                    <td>Qualification
                    </td>
                    <td><Select name="qualification"class="form-control">
                            <option>----Select Qualification---</option>
                            <option>BCA</option>
                            <option>B.tech</option>
                            <option>B.Sc</option>
                            <option>MBA</option>
                        </select>                
                    </td>
                </tr>
                <tr>
                    <td>
                        Address
                    </td>
                    <td><input type="address"name="address"class="form-control"></td>
                </tr>
                <tr>
                    <td>Upload Image</td>
                    <td><input type="file"name="pic"/></td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <input type="submit"value="register" class="form-control btn-success"/>
                    </td>
                </tr>
            </table>
        
        
        
        
        </body>
        <a href="index.jsp">Click here to login</a>
</html>