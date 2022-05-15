
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Search</title>
            <style>
                 h1{
                   font-size: 50px;
			font-weight:bold;
			text-align: center ;
			color: black;
                }
                
                p,td{
                    font-size: 30px;
			font-weight:bold;
			
			color: black;
                }
                
               
                
                body{
                    background-repeat: no-repeat;
                    background-size: 100%;
                      background-color: lightblue;
                 
                }
                input,select{text-align :center;
			font-size:15pt;
			font-weight:bold;
			 font-family:Arial;
                         
			}
			option{text-align :center;
			font-size:15pt;
			font-weight:bold;
			 font-family:Arial;
			}
                           
            </style>
                   <script>
function validateform() 
   {
    
    var a = document.getElementById('staffId').value;
    var b = document.getElementById('staffName').value;
    var c = document.getElementById('age').value;
    var d= document.getElementById ('nic').value;
 
    
    var f = document.getElementById('contactNo').value;
    var g = document.getElementById('position').value;
    


   if (isNaN(a))
            {
             alert ("Enter a valid staff Id");
             return false;
            }

     if (isNaN(c))
            {
             alert ("Enter a valid Age");
             return false;
            }   
            if (isNaN(f))
            {
             alert ("Enter a valid Contact Number");
             return false;
            }

if (!isNaN(b))
            {
             alert ("Enter a valid Name");
             return false;
            }
if (!isNaN(g))
            {
             alert ("Enter a valid Position");
             return false;
            }
            
            if (f.length!=10) 
            {
        alert("Enter a valid Contact Number");
        return false;
            }
            if (d.length!=10) 
            {
        alert("Enter a valid NIC");
        return false;
            }
         
}



</script>
        </head>
        <body background="image.jpg">
             <h1>Search Result</h1>
            
             <table align="center">
            <tr>
                <td>Staff Id = ${staff.staffId}</td>                
            </tr>
            <tr>
                <td>Name = ${staff.staffName}</td>                
            </tr>
            <tr>
                <td>Age = ${staff.age}</td>                
            </tr>
            <tr>
                <td>NIC = ${staff.nic}</td>
            </tr>
            <tr>
                <td>Address = ${staff.address}</td>
            </tr>
            <tr>
                <td>Contact Number = ${staff.contactNo}</td>
            </tr>
              <tr>
                <td>Position = ${staff.position}</td>
            </tr>
        </table>  
         <h1>Update</h1>
         <table align="center"><tr><td>
            <form method="POST" action="updatevalue">
                <p>  Staff Id : <input type="text" name="staffId" value="${staff.staffId}" id="staffId" required="" readonly /><br><br>
                Full Name : <input type="text" name="staffName" id="staffName" required=""/><br><br>
                Age : <input type="text" name="age" id="age" required=""/><br><br>
                 NIC : <input type="text" name="nic" id="nic" required="" /><br><br>
                  Address : <input type="text" name="address" id="address" required="" /><br><br>
                   Contact Number : <input type="text" name="contactNo" id="contactNo" required=""/><br><br>
                   Position : <input type="text" name="position" id="position" required=""/><br><br>
                   
                <input type="submit" value="Update" onclick = "return validateform();">
                </p>
                
            </form><br><br>
                <%@ include file="back.jsp" %>
                 </td></tr>
         </table>
        </body>
    </html>

