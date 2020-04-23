<%-- 
    Document   : course
    Created on : Apr 23, 2020, 12:12:57 PM
    Author     : orestis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course</title>
    </head>
    <body>
        <h1>Course Data</h1>

        <%
//            out.print(request.getAttribute("course") + "<br>");
            out.print(request.getAttribute("titleAt"));
            out.print(request.getAttribute("descriptionAt") + "<br>");
            out.print(request.getAttribute("streamAt"));

        %>
    </body>
</html>
