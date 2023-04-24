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
<title>Insert title here</title>
</head>
<body>
	<article>
		<h2>댓글 목록</h2>
		<form name="formm" method="post">
			<c:choose>
				<c:when test="${reviewList.size() == 0}">
					<h3 style="color: red; text-align: center;">댓글이 아직 없습니다.</h3>
				</c:when>
				<c:otherwise>
					<table id="cartList">
						<tr>
							<th>댓글</th>
						</tr>

						<c:forEach items="${reviewList}" var="reviewVO">
							<tr>
								<td><a
									href="NutsServlet?command=product_detail&pseq=${reviewVO.pseq}">
										
								</a></td>
								
								<h3>${reviewVO.content}</h3>
							
								<td><fmt:formatDate value="${reviewVO.indate}" type="date" /></td>
								<td><input type="checkbox" name="cseq"
									value="${reviewVO.seq}"></td>
							</tr>
						</c:forEach>

						<tr>
							<th><a href="#" onclick="go_cart_delete()"><h3>삭제하기</h3></a></th>
						</tr>
					</table>
				</c:otherwise>
			</c:choose>

			<div class="clear"></div>

		</form>
	</article>
</body>
</html>