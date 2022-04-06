<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reading Books</title>
</head>
<body>
	<h1><c:out value="${title}"/></h1>
	<p>Description: <c:out value="${description}" /></p>
	<p>Language: <c:out value="${language}" /></p>
	<p>Number of Pages: <c:out value="${pages}" /></p>	
</body>
</html>