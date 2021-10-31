<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
    <c:set var="now" value="<%= new Date() %>" scope="page" />
    <h2>Date: ${now}</h2>

    <p>
        Time: (fmt:formatDate type='time')
        <strong>
            <fmt:formatDate value="${now}" type="time" />
        </strong>
    </p>

    <p>
        Date: (fmt:formatDate type='date')
        <strong>
            <fmt:formatDate value="${now}" type="date" />
        </strong>
    </p>

    <p>
        Date,Time: (fmt:formatDate type='both')
        <strong>
            <fmt:formatDate value="${now}" type="both" />
        </strong>
    </p>

    <p>
        Date,Time Short: (fmt:formatDate type='both' dateStyle='short' timeStyle='short')
        <strong>
            <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/>
        </strong>
    </p>

    <p>
        Date,Time Medium: (fmt:formatDate type='both' dateStyle='medium' timeStyle='medium')
        <strong>
            <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/>
        </strong>
    </p>

    <p>
        Date,Time Long: (fmt:formatDate type='both' dateStyle='long' timeStyle='long')
        <strong>
            <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/>
        </strong>
    </p>

    <p>
        Date,Time (dd-MM-yyyy HH:mm:ss)
        <strong>
            <fmt:formatDate value="${now}" pattern="dd-MM-yyyy HH:mm:ss" />
        </strong>
    </p>


    <fmt:formatDate pattern="dd-MM-yyyy HH:mm" value="${now}" var="nowString"/>

    <p>
        Date,Time String (dd-MM-yyyy HH:mm):
        <strong>
            <c:out value="${nowString}" />
        </strong>
    </p>
</body>
</html>
