<html>
    <head>
        <title>Welcome in java bean</title>
        <link href="css/bootstrap.min.css" type="text/css"rel="stylesheet" />
        <script src="js/bootstrap.min.js"type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <h2>Upload Products</h2></br>
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
                        Brand Name</td>
                    <td><input type="text"name="brand" required="required" class="form-control"/></td>
                </tr>
                <tr>
                    <td>
                        Enter Model
                        
                    </td>
                    <td>
                        <input type="text"name="model"  class="form-control"/>
                    </td>
                </tr>
                <tr>
                    <td>Enter RAM
                </td>
                <td><input type="radio" name="ram" value="2GB"> 2GB
                <input type="radio"name="ram" value="3GB"> 3GB
                <input type="radio"name="ram" value="4GB"> 4GB
                <input type="radio"name="ram" value="6GB"> 6GB
                </td>
                
                </tr>
                <tr>
                    <td>Enter Processer</td>
                    <td><input type="text"name="processer" required="required"class="form-control"/></td>
                </tr>
                <tr>
                    <td>
                        Display
                    </td>
                    <td><input type="text"name="display"class="form-control"/></td>
                </tr>
                <tr>
                    <td>Battery
                    </td>
                    <td><input type="text"name="battery"class="form-control"/>                
                    </td>
                </tr>
                <tr>
                    <td>
                       camera
                    </td>
                    <td><input type="text"name="camera"class="form-control"></td>
                </tr>
                <tr>
                    <td>
                       Sim Type
                    </td><td><input type="radio" name="sim" value="Singel">Singel Sim
                            <input type="radio"name="sim" value="Dual">Dual Sim
                    </td>
                </tr>
                <tr>
                    <td>
                      Memory
                    </td>
                    <td><input type="radio" name="memory" value="32Gb">32Gb
                <input type="radio"name="memory" value="64Gb">64Gb
                    <input type="radio" name="memory" value="128Gb">128gb
                <input type="radio"name="memory" value="256Gb">256Gb</td>
                </tr>
                <tr>
                    <td>
                       Enter Warranty
                    </td>
                    <td><input type="text"name="warranty"class="form-control"></td>
                </tr>
                <tr>
                    <td>
                       Enter Price
                    </td>
                    <td><input type="number"name="price"class="form-control"></td>
                </tr>
                
                <tr>
                    <td>Upload Image</td>
                    <td><input type="file"name="pic"/></td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <input type="submit"value="upload" class="form-control btn-success"/>
                    </td>
                </tr>
            </table>
        
        
        
        
        </body>
        <a href="index.jsp">home</a>
</html>