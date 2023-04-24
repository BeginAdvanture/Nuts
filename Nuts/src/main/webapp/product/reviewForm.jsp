<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 입력</title>
</head>
<body>
	
		<h1>댓글 입력</h1>
	<form action="NutsServlet?command=review_form" method="post">
		<!-- <tr>
			<th>작성자</th>
			<td><input type="text" size="12" name="name" value="${productVO.id}"/></td>
		</tr> -->
		<p>
			<label for="content">내용:</label> <textarea name="content" rows="5" cols="50" required></textarea>
		</p>
		
		<input type="hidden" name="productId" value="${productId}">
		<input type="button" value="댓글 등록" onclick="location='NutsServlet?command=review_form&pseq=${productVO.pseq}'">
	</form>
</body>
</html>
