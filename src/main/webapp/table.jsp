<div class="table">
    <table class="resultTable" id="result">
        <thead>
        <tr>
            <th>x</th>
            <th>y</th>
            <th>r</th>
            <th>target hit or not</th>
            <th>time</th>
        </tr>
        </thead>
        <tbody id="output">
        <%@ page contentType="text/html;charset=UTF-8" %>
        <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
        <jsp:useBean id="results" scope="session" class="beans.ResultsBean"/>
        <core:forEach var="result" items="${results.results}">
            <tr>
                <td>${result.x}</td>
                <td>${result.y}</td>
                <td>${result.r}</td>
                <td>${result.isHit ? "Hit" : "Didnt hit"}</td>
                <td>${result.executionTime}</td>

            </tr>
        </core:forEach>
        </tbody>
    </table>
</div>
</main>