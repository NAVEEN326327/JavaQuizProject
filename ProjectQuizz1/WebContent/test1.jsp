<%@ page import="java.io.* ,java.util.* ,java.sql.*"%>
<%@ page import="javax.servlet.http.* ,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>sql:update Tag</title>
</head>
<body>
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:ORCL"
user="system" password="tiger"/>


<sql:query dataSource="${db}" var="rs">
SELECT id,name,age from emp
</sql:query>
<table border="2" width="100%">
<tr>
<th>Id</th>
<th>Name</th>
<th>Age</th>
</tr>
<c:forEach var="table" items="${rs.rows}">
<tr>
<td><c:out value="${table.id}"/></td>
<td><c:out value="${table.name}"/></td>
<td><c:out value="${table.age}"/></td>

</tr>
</c:forEach>
</table>
</body>
</html>