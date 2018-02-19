<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <sql:query var="rs"  dataSource="jdbc/viagorbs">
select username,password,enabled from users
</sql:query>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
</head>
<body>
<c:forEach var="row" items="${rs.rows}">
	User name : ${row.username} <br/> 
	Password  : ${row.password } <br/>
	Enabled  : ${row.enabled } <br/>
	</c:forEach>
</body>
</html>