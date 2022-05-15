

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>Home Staff</title>
            <style>
                  body{
                    background-repeat: no-repeat;
                    background-size: 100%;
                 
                }
                input{text-align :center;
			font-size:20pt;
			font-weight:bold;
			 font-family:Arial;
                         
			}
            </style>
        </head>
        <body background="power.jpg">
            <table align="center"><tr><td>
            <form method="GET" action="register" >
     <input type="submit" value="Register">
                   
            </form></td></tr>
                <tr><td>
             <form method="GET" action="update" >
     <input type="submit" value="Update">
                   
             </form></td></tr>
                <tr><td>
             <form method="GET" action="delete" >
     <input type="submit" value="Delete">
                   
            </form>
                    </td>></tr>
                <tr><td>
                      <form method="GET" action="localhost:8094/mainHome" >
     <input type="submit" value="Back">
         
            </form></td></tr>
            </table>
        </body>
    </html>

