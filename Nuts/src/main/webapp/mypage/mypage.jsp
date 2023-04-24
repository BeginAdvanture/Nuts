<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(${title})</title>
<%@ include file="sub_menu.jsp"%>
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
<style>
	/* 테이블 스타일 */
	table {
		border-collapse: collapse;
		margin: 20px 0;
	}

	th, td {
		border: 1px solid black;
		padding: 10px;
		text-align: center;
	}

	th {
		background-color: #f2f2f2;
	}

	/* 버튼 스타일 */
	.cancel {
		background-color: #ddd;
		color: #000;
		border: none;
		padding: 10px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		margin: 4px 2px;
		cursor: pointer;
	}

	/* clear 스타일 */
	.clear {
		clear: both;
	}

	/* 제목 스타일 */
	h2 {
		margin: 30px 0;
		font-weight: bold;
		font-size: 28px;
	}

	/* 상세보기 링크 스타일 */
	a {
		color: #000;
		text-decoration: none;
	}

	a:hover {
		color: #f00;
		text-decoration: underline;
	}
</style>
</head>
<body>
	<article>
		<h2>주문 내역</h2>
		<form name="formm" method="post">
			<table id="cartList">
				<tr>
					<th>주문일자</th>
					<th>주문번호</th>
					<th>상품명</th>
					<th>결제 금액</th>
					<th>주문 상세</th>
				</tr>
				<c:forEach items="${orderList}" var="orderVO">
					<tr>
						<td><fmt:formatDate value="${orderVO.indate}" type="date" /></td>
						<td>${orderVO.oseq}</td>
						<td>${orderVO.pname}</td>
						<td><fmt:formatNumber value="${orderVO.price}"
								type="currency" /></td>
						<td><a
							href="NutsServlet?command=order_detail&oseq=${orderVO.oseq}">조회</a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="clear"></div>
			<div id="buttons" style="float: right">
				<input type="button" value="쇼핑 계속하기" class="cancel"
					onclick="location.href='NutsServlet?command=main'">
			</div>
		</form>
	</article>
</body>
</html>
