<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 전체 페이지 */
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

/* 게시판 제목 */
h2 {
    font-size: 32px;
    margin-top: 50px;
    margin-bottom: 20px;
    text-align: center;
}

/* 설명 */
h3 {
    font-size: 18px;
    margin-bottom: 30px;
    text-align: center;
}

/* 테이블 스타일 */
table {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 40px;
}

th {
    background-color: #f2f2f2;
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}

td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}

/* 글 제목 */
td:first-child {
    text-align: center;
}

td:first-child a {
    color: #333;
    font-weight: bold;
    text-decoration: none;
}

td:first-child a:hover {
    text-decoration: underline;
}

/* 날짜 */
td:nth-child(3) {
    text-align: center;
}

/* 답변 여부 */
td:last-child {
    text-align: center;
}

/* 버튼 그룹 */
#buttons {
    margin-top: 30px;
}

#buttons input[type=button] {
    font-size: 16px;
    color: #fff;
    border: none;
    padding: 10px 20px;
    margin-left: 10px;
    cursor: pointer;
}

#buttons .submit {
    background-color: #007bff;
}

#buttons .submit:hover {
    background-color: #0069d9;
}

#buttons .cancel {
    background-color: #6c757d;
}

#buttons .cancel:hover {
    background-color: #5a6268;
}

/* 화면 정리 */
.clear {
    clear: both;
}


</style>
</head>
<body>
	<article>
		<h2>1:1 고객 게시판</h2>
		<h3>고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>
		<form name="formm" method="post">
			<table id="cartList">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록일</th>
					<th>답변 여부</th>
				</tr>
				<c:forEach items="${qnaList}" var="qnaVO">
					<tr>
						<td>${qnaVO.qseq}</td>
						<td><a
							href="NutsServlet?command=qna_view&qseq=${qnaVO.qseq}">
								${qnaVO.subject} </td>
						<td><fmt:formatDate value="${qnaVO.indate}" type="date" /></td>
						<td><c:choose>
								<c:when test="${qnaVO.rep==1}"> no </c:when>
								<c:when test="${qnaVO.rep==2}"> yes </c:when>
							</c:choose></td>
					</tr>
				</c:forEach>
			</table>
			<div class="clear"></div>
			<div id="buttons" style="float: right">
				<input type="button" value="1:1 질문하기" class="submit"
					onclick="location.href='NutsServlet?command=qna_write_form'">
				<input type="button" value="쇼핑 계속하기" class="cancel"
					onclick="location.href='NutsServlet?command=main'">
			</div>
		</form>
	</article>
</body>
</html>