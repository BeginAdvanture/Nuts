<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
<link rel="stylesheet" href="css/shopping.css">
<meta charset="UTF-8">
<title>찜목록</title>
<!-- 타이틀 수정 -->
<style type="text/css">
#heartList {
	width: 100%;
	border-collapse: collapse;
}

#heartList th, #heartList td {
	border: 1px solid black;
	padding: 5px;
	text-align: center;
}

#heartList th {
	background-color: #ccc;
}

#heartList tr:hover {
	background-color: #f5f5f5;
}

#heartList a {
	text-decoration: none;
	color: blue;
}

#heartList input[type="checkbox"] {
	transform: scale(1.5);
}

.cancel {
	background-color: #eee;
	color: black;
	border: none;
	padding: 10px;
	margin: 10px;
	cursor: pointer;
	border-radius: 5px;
	font-size: 1rem;
}

.cancel:hover {
	background-color: #ddd;
}
</style>
</head>
<body>
	<article>
		<h2>찜목록</h2>
		<form name="formm" method="post">
			<c:choose>
				<c:when test="${heartList.size() == 0}">
					<h3 style="color:#359381; text-align: center;">찜목록이 비었습니다.</h3>
				</c:when>
				<c:otherwise>
					<table id="heartList">
						<tr>
							<th>상품명</th>
							<th>찜한 날짜</th>
							<!-- 컬럼명 수정 -->
							<th>삭제</th>
						</tr>

						<c:forEach items="${heartList}" var="heartVO">
							<tr>
								<td><a
									href="NutsServlet?command=product_detail&pseq=${heartVO.pseq}">${heartVO.pname}</a></td>
								<td><fmt:formatDate value="${heartVO.indate}" type="date" /></td>
								<td><input type="checkbox" name="cseq"
									value="${heartVO.cseq}"></td>
							</tr>
						</c:forEach>

						<tr>
							<td colspan="2"><a href="#" onclick="go_heart_delete()">찜목록
									삭제</a> <!-- 링크 텍스트 수정 --></td>
						</tr>
					</table>
				</c:otherwise>
			</c:choose>

			<div class="clear"></div>

			<div id="buttons" style="float: right">
				<input type="button" value="쇼핑 계속하기" class="cancel"
					onclick="location.href='NutsServlet?command=main'">

			</div>
		</form>
	</article>
</body>
</html>
