<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function go_view(qseq) {
		var theForm = document.frm;
		theForm.qseq.value = qseq;
		theForm.action = "NutsServlet?command=admin_qna_detail";
		theForm.submit();
	}
</script>
<script type="text/javascript" src="admin/product/product.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
  background-color: #f2f2f2;
  font-family: Arial, Helvetica, sans-serif;
}

article {
  background-color: #fff;
  margin: 20px auto;
  max-width: 800px;
  padding: 20px;
  box-shadow: 0px 0px 10px #999;
}

h1 {
  text-align: center;
}

table {
  border-collapse: collapse;
  margin-top: 20px;
  width: 100%;
}

th, td {
  padding: 12px;
  text-align: left;
}

th {
  background-color: #ddd;
  font-weight: bold;
}

td:first-child {
  font-weight: bold;
}

a {
  color: #333;
  text-decoration: none;
}

a:hover {
  color: #666;
}

.btn {
  background-color: #4CAF50;
  border: none;
  color: #fff;
  cursor: pointer;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
}

.btn:hover {
  background-color: #555;
  color: #fff;
}

textarea {
  display: block;
  margin: 10px 0;
  padding: 10px;
  width: 100%;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 16px;
  border-radius: 5px;
  border: 1px solid #ccc;
}



</style>
</head>
<body>
	<article>
		<h1>qna 리스트</h1>
		<form name="frm" method="post">
			<input type="hidden" name="qseq">
			<table id="orderList">
				<tr>
					<th>번호(답변여부)</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items="${qnaList}" var="qnaVO">
					<tr>
						<td>${qnaVO.qseq} <c:choose>
								<c:when test='${qnaVO.rep=="1"}'>(미처리)</c:when>
								<c:otherwise>(답변처리완료)</c:otherwise>
							</c:choose>
						</td>
						<td><a href="#" onClick="javascript:go_view('${qnaVO.qseq}')">
								${qnaVO.subject} </a></td>
						<td>${qnaVO.id}</td>
						<td><fmt:formatDate value="${qnaVO.indate}" /></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</article>
</body>
</html>