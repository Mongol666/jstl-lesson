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

    <c:forEach items="${requestScope.departments}" var="department">
        <h3>
            ${department}
        </h3>
        <ul>
            <c:forEach items="${department.employees}" var="employee" >
                <li>
                    ${employee.empName} - (${employee.job})
                </li>
            </c:forEach>
        </ul>
    </c:forEach>
</body>
</html>
