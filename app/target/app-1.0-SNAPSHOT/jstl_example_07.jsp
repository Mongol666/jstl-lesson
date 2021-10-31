<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
    <c:set scope="page" var="accountBalance" value="12345.6789" />
    <h2>Account balance: ${accountBalance}</h2>

    <p>
        formatNumber (type='currency')
        <strong>
            <fmt:formatNumber value="${accountBalance}" type="currency" />
        </strong>
    </p>

    <p>
        formatNumber (type='number', maxIntegerDigits=3)
        <strong>
            <fmt:formatNumber type="number" maxIntegerDigits="3" value="${accountBalance}"/>
        </strong>
    </p>

    <p>
        formatNumber (type='number', maxFractionDigits=3)
        <strong>
            <fmt:formatNumber type="number" maxFractionDigits="3" value="${accountBalance}"/>
        </strong>
    </p>

    <p>
        formatNumber (type='number', groupingUsed=false)
        <strong>
            <fmt:formatNumber type="number" groupingUsed="false" value="${accountBalance}"/>
        </strong>
    </p>

    <p>
        formatNumber (type='percent', maxIntegerDigits=3)
        <strong>
            <fmt:formatNumber type="percent" maxIntegerDigits="3" value="${accountBalance}"/>
        </strong>
    </p>

    <p>
        formatNumber (type='percent', maxIntegerDigits=10)
        <strong>
            <fmt:formatNumber type="percent" maxIntegerDigits="10" value="${accountBalance}"/>
        </strong>
    </p>

    <p>
        formatNumber (type='number', pattern='###,###E0')
        <strong>
            <fmt:formatNumber type="number" pattern="###,###E0" value="${accountBalance}"/>
        </strong>
    </p>

    <p>
        Account Balance in USA (setLocale='en_US')
        formatNumber (type='currency')
        <strong>
            <fmt:setLocale value="en_US"/>
            <fmt:formatNumber type="currency" value="${accountBalance}"/>
        </strong>
    </p>

    <p>
        Account Balance in Canada (setLocale='fr_CA')
        formatNumber (type='currency')
        <strong>
            <fmt:setLocale value="fr_CA"/>
            <fmt:formatNumber type="currency" value="${accountBalance}"/>
        </strong>
    </p>
</body>
</html>
