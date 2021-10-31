<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
<c:url var="myURL" value="jstl_example_03.jsp?color=red&background=blue"/>
<a href="${myURL}">Переход</a>
</body>
</html>
