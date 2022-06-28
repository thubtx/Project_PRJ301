<%-- 
    Document   : attendance
    Created on : Jun 22, 2022, 2:27:07 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Take Attendance</title>
    </head>
    <body>
        <h1>FPT University</h1>
        <table>
            <tr>
                <th> ID </th>
                <th> Name </th>
                <th> Class </th>
            </tr>

            <c:forEach items="${requestScope.students}" var="s">
                <tr>
                    <td>
                        ${s.Id}
                    </td>
                    <td>
                        ${s.Name}
                    </td>
                    <td>
                        ${s.Class}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
