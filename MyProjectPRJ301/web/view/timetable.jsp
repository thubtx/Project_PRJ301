<%-- 
    Document   : timetable
    Created on : Jul 15, 2022, 3:39:41 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            tr,th,td{
                text-align: center;
            }
        </style>
    </head>
    <body>
        
        <h1>FPT University</h1>
        Semeter: <select><option>Summer 2022</option></select> <br>
        <input type="date">
        <input type="submit" value="Search"/> <br>
        <table>
            <tr>
                <th>Time</th>
                <th>Course</th>
                <th>Class</th>
                <th>Slot</th>
                <th>Room</th>
            </tr>
            <c:forEach items="${requestScope.timetable}" var="t">
                <tr>
                    <td>
                        ${Time}
                    </td>
                    <td>
                        ${Course}
                    </td>
                    <td>
                        ${Class}
                    </td><!-- comment -->
                    <td>
                        ${Slot}
                    </td>
                    <td>
                        ${Room}
                    </td>
                </tr>
                
            </c:forEach>
        </table>
    </body>
</html>
