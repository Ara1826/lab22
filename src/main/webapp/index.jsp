<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- <link rel="stylesheet" href="styles.css"> -->
    <link rel="icon" type="image/png" href="res/favicon.jpg">
    <title>Web programming laboratory work no. 2</title>

    <style>
        @import url('https://fonts.cdnfonts.com/css/palatino');

        :root {
            /* font-family: "Outfit", Gothic A1, fantasy, Arial, sans-serif; */
            font-family: "Papyrus", "fantasy";
            color-scheme: dark;
            /*background-image: url('res/back.jpg');*/
            background-size: cover;
            background-attachment: fixed;
        }

        header {
            height: 43px;
            border-radius: 10px;

            display: grid;
            grid-template-columns: 1fr auto 1fr;
            align-items: center;

            box-shadow: 0 0 2px white;
            backdrop-filter: blur(10px);
        }

        .info {
            font-size: 15px;
            font-weight: 100;
            text-align: center;
        }

        .icon {
            display: flex;
            height: 30px;
            margin-left: 6px;
            justify-self: start;
        }

        #date-time {
            margin-right: 8px;
            font-size: 12px;
            justify-self: end;
        }


        .container {
            display: grid;
            grid-template-columns: 10% 1fr 1fr 10%;
            grid-template-rows: min-content minmax(0, 1fr);
            gap: 20px;
        }


        .graph,
        .form {
            border-radius: 10px;
            border: 1px solid white;
            padding: 5vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            backdrop-filter: blur(7px);
            box-shadow: 0 0 3px white;

            max-height: 700px;
        }

        .graph {
            grid-column: 1 / 3;
            grid-row: 2 / 4;
        }

        .form {
            grid-column: 3 / 5;
            grid-row: 2 / 4;
        }

        .input-group {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 1em;
            gap: 15px;
        }

        .button-group {
            display: flex;
            flex-wrap: wrap;
            gap: 1em;
            justify-content: center;
        }

        input {
            padding: 1em;
        }

        input[type="text"],
        select {
            padding: 0.5em;  /* каскадирование */
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        /* Стили для кнопок */
        .btn {
            background-color: #737373;
            border: 1px solid #b700ff;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }

        /* Состояние при наведении */
        .btn:hover {
            background-color: #b700ff;
        }

        /* Состояние при нажатии */
        .btn.active {
            background-color: #b700ff;
            color: white;
            border-color: #0056b3;
        }


        .check-btn {
            display: flex;
            justify-content: center;
            margin-top: 1em;
        }

        input[type="active"] {
            padding: 0.5em 1em;
            border-radius: 4px;
            background-color: #da69b8;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #c839e8;
            border: 2px solid #8460b5;
        }

        .table {
            grid-column: 1 / 5;
            grid-row: 4 / 5;

            flex-direction: row;
            justify-content: center;
            backdrop-filter: blur(7px);
            box-shadow: 0 0 3px white;
            border-radius: 20px 20px 0 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            text-align: center;
            padding: 10px;
        }

        .resultTable tr th:first-child {
            border-radius: 20px 0 0 0;

        }

        .resultTable tr th:last-child {
            border-radius: 0 10px 0 0;

        }

        .resultTable tr th:not(:first-child):not(:last-child) {
            border-left: 1px solid white;
            border-right: 1px solid white;
        }

        .result-cell-in{
            color: green;
        }

        .result-cell-out{
            color: red;
        }

        thead {
            border-bottom: 1px solid white;
        }
    </style>
</head>

<body>
<header>
    <h1 class="info">var 23121 | Arabyan Armen | P3231</h1>
    <div id="date-time">
        <span id="date"></span>, <span id="time"></span>
    </div>
</header>

<main class="container">
    <div class="graph">
        <jsp:include page="graph.jsp" />
    </div>

    <div class="form" id="input-form">
        <jsp:include page="inputForm.jsp" />
    </div>

        <jsp:include page="table.jsp"/>
</main>

<%--<audio
<%--</audio>--%>

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
<script type="module" src="main.js"></script>
</body>
</html>
