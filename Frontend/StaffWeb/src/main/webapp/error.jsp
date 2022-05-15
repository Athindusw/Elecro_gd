
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
             <title>Error Page</title>
            <style>
                 
                
                body{
                    background-repeat: no-repeat;
                    background-size: 100%;
                 
                }
                input,select{text-align :center;
			font-size:20pt;
			font-weight:bold;
			 font-family:Arial;
                         
			}
			
                           
            </style>
        </head>
        <body background="image.jpg">
            <script>
            alert ("Invalid Entry, Please Check Again!");
            </script>
        <form method="GET" action="home" >
                         
            <input type="submit" value="Back">
           
        </form>
        </body>
    </html>

