<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
<c:choose>
    <c:when test="${param.color == 'red'}">
        <p style="color: red;">COLOR RED</p>
    </c:when>
    <c:when test="${param.color == 'blue'}">
        <p style="color: blue;">COLOR BLUE</p>
    </c:when>
    <c:otherwise>
        Order color
    </c:otherwise>
</c:choose>
</body>
</html>
