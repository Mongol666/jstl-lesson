<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
<c:set scope="page" var="greeting" value="Hello everybody!"/>
<c:out value="${greeting}"/>
</body>
</html>
