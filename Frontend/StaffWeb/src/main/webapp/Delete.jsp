
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Delete</title>
            <style>
                 h1{
                   font-size: 100px;
			font-weight:bold;
			text-align: center ;
			color: black;
                }
                
                p{
                    font-size: 60px;
			font-weight:bold;
			text-align: center ;
			color: black;
                }
                
               
                
                body{
                    background-repeat: no-repeat;
                    background-size: 100%;
                 
                }
                input,select{text-align :center;
			font-size:20pt;
			font-weight:bold;
			 font-family:Arial;
                         
			}
			option{text-align :center;
			font-size:20pt;
			font-weight:bold;
			 font-family:Arial;
			}
                           
            </style>
                       <script>
function validateform() 
   {
    
    var x = document.getElementById('staffId').value;
  


    
			
			
      if (isNaN(x))
            {
             alert ("Enter a valid staff Id");
             return false;
            }

   


        




         
}



</script>
        </head>
        <body background="image.jpg">
            
             <h1>Delete Staff Members</h1>
             <table align="center"><tr><td>
        <form method="POST" action="delete">
            <p> Staff ID : <input type="text" name="staffId" id = "staffId" required="" /> <br> <br>              
            <input type="submit" value="Delete" onclick = "return validateform();">
            </p>
        </form><br><br>
             <%@ include file="back.jsp" %>
                     </td></tr>
             </table>
        </body>
    </html>

