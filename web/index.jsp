<%-- 
    Document   : index
    Created on : Apr 23, 2020, 11:52:15 AM
    Author     : orestis
--%>

<%@page import="models.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>
            SingleCourse
        </title>
    </head>

    <body>
        <div class="container-fluid" id="navbarid"></div>
        <div id="includedContent"></div>
        <h1>Single Course</h1>
        <div class="container">
            <h2>Add course</h2>
            <form action="index.jsp"  method="POST">
                <div class="form-group row">
                    <label for="inputtitle" class="col-sm-2 col-form-label">Title</label>
                    <div class="col-sm-10">
                        <input type="title" class="form-control" id="inputtitle" name="title" placeholder="Title">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputdescription" class="col-sm-2 col-form-label">Description</label>
                    <div class="col-sm-10">
                        <input type="description" class="form-control" id="inputdescription" name ="description" placeholder="Description">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputstream" class="col-sm-2 col-form-label">Stream</label>
                    <div class="col-sm-10">
                        <input type="stream" class="form-control" id="inputstream" name="stream" placeholder="Stream">
                    </div>
                </div>
<!--                <fieldset class="form-group">
                    <div class="row">
                        <legend class="col-form-label col-sm-2 pt-0">Type</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1"
                                       value="option1" checked>
                                <label class="form-check-label" for="gridRadios1">
                                    Full-time
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2"
                                       value="option2">
                                <label class="form-check-label" for="gridRadios2">
                                    Part-time
                                </label>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="form-group row">
                    <label for="startdate" class="col-sm-2 col-form-label">Start date</label>
                    <div class="col-sm-10">
                        <input type="date" id="start" name="start-date" value="2020-05-01" min="2018-01-01"
                               max="2020-05-31">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="enddate" class="col-sm-2 col-form-label">End date</label>
                    <div class="col-sm-10">
                        <input type="date" id="end" name="end-date" value="2020-05-01" min="2018-01-01" max="2020-05-31">
                    </div>
                </div>-->
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-success">Add</button>
                    </div>
                </div>
            </form>
        </div>
        <%
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            String stream = request.getParameter("stream");
            
//            Course course = new Course(title, description, stream);
            out.print("Method :" + request.getMethod());
            out.print(title);
            if (request.getMethod().equals("POST")){
//                request.setAttribute("course", course);
                request.setAttribute("titleAt", title);
                request.setAttribute("descriptionAt", description);
                request.setAttribute("streamAt", stream);
                RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/course.jsp");
                rd.forward(request, response);
            }
        %>
    </body>

</html>