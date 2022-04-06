<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title>Read Share</title>
</head>
<body>
	<div class="container">
		<h1>All Books</h1>
		
		<table class="table table-striped table-bordered">
			<thead class="table-secondary">
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Language</th>
					<th>#Pages</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="book" items="${books}">
					<tr>
						<td><c:out value="${book.getId()}"/></td>
						<td>
							<a href="/books/${book.getId()}"><c:out value="${book.getTitle()}"/></a>
						</td>
						<td><c:out value="${book.getLanguage()}"/></td>
						<td><c:out value="${book.getNumberOfPages()}"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>