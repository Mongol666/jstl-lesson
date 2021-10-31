<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
    <fmt:setLocale value="en" />
    <fmt:setBundle basename="org.example.props.my_bundle.properties" />

    <form action="">
        <table border="0">
            <tr>
                <td>
                    <fmt:message key="login.label.userName"/>
                </td>
                <td>
                    <input type="text" name="UserName">
                </td>
            </tr>
            <tr>
                <td>
                    <fmt:message key="login.label.password" />
                </td>
                <td>
                    <input type="text" name="Password">
                </td>
            </tr>
        </table>
        <input type="submit" name="Войти">
    </form>
</body>
</html>
