<%-- 
    Document   : search
    Created on : Jun 22, 2022, 4:41:15 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Timetable</title>
    </head>
    <body>
        <h1>FPT University</h1>
        <input type="date">
        <table>
            <tr>
                <th> Slot </th>
                <th> Course </th>
                <th> Class </th> 
                <th>  </th> 
            </tr>

            <c:forEach items="${requestScope.emps}" var="e">
                <tr>
                    <td>
                        ${Slot}
                    </td>
                    <td>
                        ${CourseName}
                    </td>
                    <td>
                        ${Class}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
