<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
    <c:set var="accountBalance" value="$12345.6789"/>
    <h2>Account balance: ${accountBalance}</h2>
    <fmt:parseNumber var="parsedBalance" type="currency" parseLocale="en_US" value="${accountBalance}" />

    <p>
        Account Balance: (after parse)
        <c:out value="${parsedBalance}"/>
    </p>

    <fmt:parseNumber var="parsedBalanceIntegerOnly" type="currency" parseLocale="en_US" integerOnly="true" value="${accountBalance}" />

    <p>
        Account Balance: (after set 'integerOnly=true') <c:out value="${parsedBalanceIntegerOnly}" />
    </p>
</body>
</html>
