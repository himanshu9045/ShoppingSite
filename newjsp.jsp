<html>
    <head>
        <title>Using javax</title>
        
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            function msg(str)
            {
                
                        
                          var x= new XMLHttpRequest();
                          x.onreadystatechange = function(){
                              if(x.readyState==4 && x.status==200)
                                  {
                                      document.getElementById("tab").innerHTML=this.responseText;
                                  }
                          };
                          x.open("Get","list.jsp?n="+str,true);
                          x.send();
                        
            }
        </script>
    </head>
    <body>
        <h2>Create Table of any number: </h2><br/>  
        <form >
            <table class="table" style="width:50%" >
                <tr>
                    <td onkeyup="msg(this.mobile)">mobiles</td>
                      
                </tr>
                
                
            </table>
            
        </form>
    
        <hr style="height: 30px;">
        <p style="color: blue;font-size: 25px;" id="tab"></p>
    </body>
</html>