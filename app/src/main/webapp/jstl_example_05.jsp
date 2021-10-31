<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
    <c:forTokens items="Tom,Jerry,Dog" delims="," var="person_name">
        <c:out value="${person_name}"/>
    </c:forTokens>
</body>
</html>
