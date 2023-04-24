<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
  font-family: Arial, sans-serif;
  background-color: #f7f7f7;
  margin: 0;
  padding: 0;
}

article {
  margin: 20px auto;
  max-width: 800px;
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ddd;
}

h1 {
  font-size: 36px;
  margin-top: 0;
  margin-bottom: 20px;
}

table {
  width: 100%;
  border-collapse: collapse;
}

th, td {
  padding: 10px;
  text-align: left;
  border: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
}

textarea {
  width: 100%;
  padding: 10px;
  box-sizing: border-box;
  margin-bottom: 10px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
}

.btn:hover {
  background-color: #3e8e41;
}


</style>
<script type="text/javascript" src="admin/product/product.js"></script>
<script type="text/javascript">
	function go_list() {
		var theForm = document.frm;
		theForm.action = "NutsServlet?command=admin_qna_list";
		theForm.submit();
	}
	function go_rep(qseq) {
		var theForm = document.frm;
		theForm.qseq.value = qseq;
		theForm.action = "NutsServlet?command=admin_qna_repsave";
		theForm.submit();
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<article>
		<h1>1:1 게시판</h1>
		<form name="frm" method="post">
			<input type="hidden" name="qseq">
			<table id="orderList">
				<tr>
					<th width="20%">제목</th>
					<td>${qnaVO.subject} ${qnaVO.rep}</td>
				</tr>
				<tr>
					<th>등록일</th>
					<td><fmt:formatDate value="${qnaVO.indate}" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${qnaVO.content}</td>
				</tr>
			</table>
			<c:choose>
				<c:when test='${qnaVO.rep=="1"}'>
					<table id="orderList">
						<tr>
							<td colspan="2"><img src="admin/images/opinionimg01.gif">
							</td>
						</tr>
						<tr>
							<td colspan="2"><textarea name="reply" rows="3" cols="50"></textarea>
								<input type="button" class="btn" value="저장"
								onClick="go_rep('${qnaVO.qseq}')"></td>
						</tr>
					</table>
					<br>
				</c:when>
				<c:otherwise>
					<table id="orderList">
						<tr>
							<th>댓글</th>
							<td>${qnaVO.reply}</td>
						</tr>
					</table>
				</c:otherwise>
			</c:choose>
			<input type="button" class="btn" value="목록" onClick="go_list()">
		</form>
	</article>
</body>
</html>