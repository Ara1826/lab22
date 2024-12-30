
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <div class="input-group">
        <p>X:</p>
        <div id="x" class="button-group">
            <button type="button" class="btn" data-value="-2">-2</button>
            <button type="button" class="btn" data-value="-1">-1</button>
            <button type="button" class="btn" data-value="0">0</button>
            <button type="button" class="btn" data-value="1">1</button>
            <button type="button" class="btn" data-value="2">2</button>
            <button type="button" class="btn" data-value="3">3</button>
            <button type="button" class="btn" data-value="4">4</button>
        </div>
    </div>
    <div class="input-group">
        <label for="y">Y:</label>
        <input type="text" id="y" name="y" maxlength="8" placeholder="Y: (-5, 3)">
    </div>
    <div class="input-group">
        <label for="r">R:</label>
        <input type="text" id="r" name="r" maxlength="8" placeholder="default: 3; R: (1, 4)">
    </div>
    <div class="check-btn">
        <input type="submit" value="Check">
    </div>
</form>
</body>
</html>