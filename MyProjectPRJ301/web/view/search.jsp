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
            <tr>
                <td>07:30:00-09:00:00</td>
                <td>Java Web Application Development</td>
                <td>SE1622</td>
                <td>15</td>
                <td>BE-201</td>
                <td><input type="submit" value="Take"></td>
            </tr>
            <tr>
                <td>09:10:00-10:40:00</td>
                <td>Data Structures and Algorithms</td>
                <td>IB1607</td>
                <td>11</td>
                <td>AL-403</td>
                <td><input type="submit" value="Take"></td>
            </tr>
            <tr>
                <td>10:50:00-12:20:00</td>
                <td>Data Structures and Algorithms</td>
                <td>GD1712</td>
                <td>16</td>
                <td>DE-202</td>
                <td><input type="submit" value="Take"></td>
            </tr><!-- comment -->
            <tr>
                <td>12:50:00-14:20:00</td>
                <td> Introduction to Databases</td>
                <td>SE1709</td>
                <td>9</td>
                <td>DE-412</td>
                <td><input type="submit" value="Take"></td>
            </tr><!-- comment -->
            <tr>
                <td>14:30:00-16:00:00</td>
                <td>Java Web Application Development</td>
                <td>AI1723</td>
                <td>5</td>
                <td>BE-303</td>
                <td><input type="submit" value="Take"></td>
            </tr>
            
            <tr>
                <td>16:10:00-17:40:00</td>
                <td>Object-Oriented Programming</td>
                <td>SE1623</td>
                <td>20</td>
                <td>AL-507</td>
                <td><input type="submit" value="Take"></td>
            </tr>
        </table>
            
    </body>
</html>
