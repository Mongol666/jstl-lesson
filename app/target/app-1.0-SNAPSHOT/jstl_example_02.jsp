<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
    <h2>
        Departments and Employees
    </h2>

    <c:forEach var="department" items="${requestScope.departments}">
        <c:if test="${not empty department.employees}" >
            <h3>
                ${department}
            </h3>
            <ul>
                <c:forEach var="employee" items="${department.employees}">
                    <li>
                        ${employee.empName} - (${employee.job})
                    </li>
                </c:forEach>
            </ul>
        </c:if>
    </c:forEach>
</body>
</html>
