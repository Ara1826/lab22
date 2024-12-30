<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .container {
            margin: 20px auto;
            padding: 20px;
            width: 50%;
            background: #ffffff;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #081309;
            color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Таблица результатов</h2>
    <table>
        <thead>
        <tr>
            <th>X</th>
            <th>Y</th>
            <th>R</th>
            <th>target hit or not</th>
            <th>time</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%= request.getParameter("x") %></td>
            <td><%= request.getParameter("y") %></td>
            <td><%= request.getParameter("r") %></td>
            <td><%= "true".equals(request.getParameter("isHit")) ? "Hit" : "Didn't hit" %></td>
            <td><%= request.getParameter("executionTime") %></td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
