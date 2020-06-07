<html>
    <head>
        <link href="css/bootstrap.min.css"type="text/css"rel="stylesheet"/>
        <script src="js/query.min.js"type="text/javascript"></script>
        <script src="js/bootstrap.min.js"type="text/javascript"></script>
        <title>JSP Page</title>
    <script type="text/javascript">
        alert("Welcome in shopping site.");
            </script>
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp"/>
        </header>
        
        <div class="row">
            <div class="col-md-10"style="background-color:green;">
                <h2 style="color:white;">Mobiles </h2>
            </div>
            <div  class="col-md-2" align="right"style="background-color:green;"><a href="list1.jsp"> <button type="button">More</button></a>&nbsp;&nbsp;</div>        
        </div><br/>
     <div class="row">
         <div class="col-md-3">
                    <a href="honor.jsp?id=3"> <img src="pic/honor.jpg" style="width:300px;height:300px;" class="img-thumbnail img-responsive"/>
                    <p align="center"style="font-weight:bold;font-size:20px;color: black;">Honor 9Lite</p>
                    <p align="center" style="color:green; font-style: italic;font-size:15px;">Get extra 15%off</p></a>
         </div>
         <div class="col-md-3">
                       
             <a href="mi.jsp?id=2">  <img src="pic/mia1.jpg"  style="width:300px;height:300px;"class="img-thumbnail img-responsive"/>
                        <p align="center" style="font-weight:bold;font-size:20px;color: black;">Mi A1</p>
                    <p align="center" style="color:green; font-style:italic;font-size:15px;">Get extra 10%off</p></a>
         </div>
         <div class="col-md-3">
                    <a href="redmi.jsp?id=4"> <img src="pic/redmi2.jpg" style="width:300px;height:300px;"class="img-thumbnail img-responsive"/>
                        <p align="center"style="font-weight:bold;font-size:20px;color: black;">Redmi 4</p>
                        <p align="center" style="color:green; font-style: italic; font-size:15px;">Get extra 10%off</p>
                    </a>
         </div>
         <div class="col-md-3">
             <a href="iphone.jsp?id=5"><img src="pic/i4.jpg"style="width: 300px;height:300px;"class="img-thumbnail img-responsive"/>
             <p align="center"style="font-weight:bold;font-size:20px;color: black;">iPhone 8plus</p>
             <p align="center" style="color:green; font-style:italic;font-size:15px;">Get extra 25%off</p></a>
         </div>
        </div>
        
        
        <div class="row">
            <div class="col-md-12"style="background-color:skyblue;">
                <h2 style="color:white;">Laptop </h2>
            </div></div><br/>
        <div class="row">
         <div class="col-md-3">
                    <a href="hp.jsp"> <img src="pic/hpi3_2.jpg" style="width:300px;height:250px;" class="img-thumbnail img-responsive"/>
                    <p align="center"style="font-weight:bold;font-size:20px;color: black;">HP 15inch i3 laptop</p>
                    <p align="center" style="color:green; font-style: italic;font-size:15px;">Get extra 10%off</p></a>
         </div>
         <div class="col-md-3">
                    <a href="lenevo.jsp">  <img src="pic/l1.jpg"  style="width:300px;height:250px;"class="img-thumbnail img-responsive"/>
                        <p align="center" style="font-weight:bold;font-size:20px;color: black;">Lenevo 15inch i3 Laptop</p>
                    <p align="center" style="color:green; font-style: italic;font-size:15px;">Get extra 15%off</p></a>
         </div>
         
     </div>
        <div class="row">
            <div class="col-md-12"style="background-color:gold;">
                <h2 style="color:white;">Clothes </h2>
            </div></div><br/>
         <div class="row">
         <div class="col-md-3">
                    <a href="t1.jsp"> <img src="pic/t1.jpg" style="width:300px;height:300px;" class="img-thumbnail img-responsive"/>
                    <p align="center"style="font-weight:bold;font-size:20px;color: black;">Black Stylish Trousers for men</p>
                    <p align="center" style="color:green; font-style: italic;font-size:15px;">Get extra 10%off</p></a>
         </div>
         <div class="col-md-3">
                    <a href="t2.jsp">  <img src="pic/t2.jpg"  style="width:300px;height:300px;"class="img-thumbnail img-responsive"/>
                        <p align="center" style="font-weight:bold; color: black;font-size:20px;">Grey Formal Trousers for men</p>
                    <p align="center" style="color:green; font-style: italic;font-size:15px;">Get extra 15%off</p></a>
         </div>
             <div class="col-md-3">
                 <a href="t3.jsp"><img src="pic/t3.jpg" style="width:300px;height:300px;"class="img-responsive img-thumbnail">
                     <p align="center" style="font-size: 20px;color:black; font-weight:bold;">Stylish checked Trousers for men</p>
                     <p align="center"  style="color: green; font-size: 15px;font-style: italic;">Get 20% off</p>
                 </a>
             </div>
             <div class="col-md-3">
                 <a href="t4.jsp"><img src="pic/t5.jpeg" style="width:300px;height:300px;"class="img-responsive img-thumbnail">
                     <p align="center"  style="color:black; font-size: 20px;font-weight:bold;">White Formal Trousers for men</p>
                     <p align="center"  style="color: green; font-size: 15px;font-style: italic;">Get 8% off</p>
                 </a>
             </div>
         
     </div>
        
            <footer>
                <jsp:include page="footer.jsp"/>
            </footer>
            
                   </body>
     
</html>
