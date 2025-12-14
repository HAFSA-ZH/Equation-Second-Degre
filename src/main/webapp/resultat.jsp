<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Equation" %>
<%
    Equation eq = (Equation) request.getAttribute("equation");
    double[] solutions = (double[]) request.getAttribute("solutions");
%>
<html>
<head>
    <title>Résultat</title>
     <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<div class="card">
    <h2>Résultat pour l'équation : <%= eq.getA() %>X² + <%= eq.getB() %>X + <%= eq.getC() %> = 0</h2>

    <p>Discriminant (Δ) : <%= eq.getDiscriminant() %></p>

    <%
        if(solutions.length == 0) {
    %>
            <p>Pas de solution réelle.</p>
    <%
        } else if(solutions.length == 1) {
    %>
            <p>Une solution réelle : X = <%= solutions[0] %></p>
    <%
        } else {
    %>
            <p>Deux solutions réelles :</p>
            <ul>
                <li>X₁ = <%= solutions[0] %></li>
                <li>X₂ = <%= solutions[1] %></li>
            </ul>
    <%
        }
    %>

    <a href="index.jsp">Recommencer</a>
</div>
</body>
</html>

