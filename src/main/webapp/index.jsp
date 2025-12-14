<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
     <link rel="stylesheet" href="CSS/style.css">
    <title>Calcul Équation du 2nd degré</title>
</head>
<body>
    <div class="card">
    <h2>Équation du second degré : aX² + bX + c = 0</h2>
    <form action="calculer" method="post">
        <input type="number" step="any" name="a"  placeholder="  a"  required><br><br>
        <input type="number" step="any" name="b" placeholder="  b"  required><br><br>
        <input type="number" step="any" name="c"  placeholder="  c" required><br><br>
        <input type="submit" value="Calculer">
    </form>
</div>
    <p style="color:red;">
        ${error}
    </p>
</body>
</html>

