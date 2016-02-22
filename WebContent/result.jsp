<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "normalize.css"/>
<link rel = "stylesheet" type = "text/css" href = "SpringDataBase.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Results</title>
</head>
<body>
	<h1>Company DB</h1>
	<form class = "first" method="GET" action="index.html">
		<input class = "buttons" type="submit" value="Back to Search"/>
	</form>
	<br>
	<c:forEach var = "row" items = "${result}">
		${row}
	</c:forEach>
</body>
</html>