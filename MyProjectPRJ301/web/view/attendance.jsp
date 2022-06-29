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
       
            Course Name: <select id="course">
            <option>Java Web Application Development(PRJ301)</option>
            <option>...</option> </select>
            <br>
            Class:<select> <option> SE1623</option> </select>
            <input type="submit" value="Search">
             <table>
            <tr>
                <th> ID </th>
                <th> Name </th>
                <th> Absent(%) </th>
                <th> Slot 1 </th>
                <th> Slot 2 </th>
                <th> Slot 3 </th>
                <th> Slot 4 </th>
                <th> Slot 5 </th>
            </tr>
            <tr>
                <td>24364242</td>
                <td>Bùi Thị Xuân Thu</td>
                <td>0%</td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
            </tr>
            <tr>
                <td>42744213</td>
                <td>Bùi Thanh Thư</td>
                <td>0%</td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
            </tr><!-- comment -->
            <tr>
                <td>63451287</td>
                <td>Nguyễn Văn A</td>
                <td>0%</td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
            </tr>
            <tr>
                <td>23457099</td>
                <td>Đỗ Thị B</td>
                <td>0%</td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
            </tr><!-- comment -->
            <tr>
                <td>13463214</td>
                <td>Trần Thị C</td>
                <td>0%</td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
            </tr>
            <tr>
                <td>65428976</td>
                <td>Trần Văn D</td>
                <td>0%</td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
                <td><input type="text" name="status"> </td>
            </tr><!-- comment -->
            
        </table>
            <input type="submit" value="Save">
    </body>
</html>
