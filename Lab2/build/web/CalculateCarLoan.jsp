<%-- 
    Document   : CalculateCarLoan
    Created on : 23 Apr 2024, 22:02:08
    Author     : 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Loan Calculation</title>
    </head>
    <body>
    <h2>Details of car loan:</h2>

    <%
        double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
        int loanPeriod = Integer.parseInt(request.getParameter("loanPeriod"));
        
        double annualInterestRate = 0.05; 
        double totalLoan = loanAmount + (loanAmount * annualInterestRate * loanPeriod);

    %>
    <p>Loan Request : <%= loanAmount %></p>
    <p>Period of payment : <%= loanPeriod %></p>
    <p>Total Loan (+ interest) : <%= String.format("%.2f", totalLoan) %></p>
</body>
</html>
