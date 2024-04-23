<%-- 
    Document   : populateArray
    Created on : 23 Apr 2024, 21:34:27
    Author     : 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>populateArray</title>
</head>
<body>
    <h2>Read Java array and populate it into HTML's Table</h2>
    <table id="salesTable">
        <tr>
            <th>Salesman</th>
            <th>Jan</th>
            <th>Feb</th>
            <th>Mar</th>
        </tr>
        <%!
            // Define a 2D array to store sales data
            String[][] salesData = {
                {"Salesman 1", "2500", "2100", "2200"},
                {"Salesman 2", "2000", "1900", "2400"},
                {"Salesman 3", "1800", "2200", "2450"}
            };
        %>
        <% 
            // Iterate through the sales data array and populate the table
            for(int i=0; i<salesData.length; i++) {
        %>
            <tr>
                <td><%= salesData[i][0] %></td>
                <td><%= salesData[i][1] %></td>
                <td><%= salesData[i][2] %></td>
                <td><%= salesData[i][3] %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>