<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
    <sql:setDataSource var="datasource"
                       driver="org.postgresql.Driver"
                       user="mongol" password="Gurmanidze01"
        url="jdbc:postgresql://localhost:5432/dbit" />
    <sql:query dataSource="${datasource}" var="result" >
        SELECT * FROM employee;
    </sql:query>

    <h3>
        <table border="1" width="100%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Salary</th>
                <th>Title (ID)</th>
            </tr>
            <c:forEach var="employee" items="${result.rows}">
                <tr>
                    <td>
                        <c:out value="${employee.id}"/>
                    </td>
                    <td>
                        <c:out value="${employee.name}"/>
                    </td>
                    <td>
                        <c:out value="${employee.salary}"/>
                    </td>
                    <td>
                        <c:out value="${employee.title_id}"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </h3>
</body>
</html>
