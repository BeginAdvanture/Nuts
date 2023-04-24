<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="sub_menu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="sub_menu.jsp"%>
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
<link rel="stylesheet" href="css/shopping.css">
<style type="text/css">

/* 주문자 정보 테이블 스타일 */
#cartList th {
  background-color: #ddd;
  border: 1px solid #777;
  padding: 10px;
  text-align: center;
}

#cartList td {
  border: 1px solid #777;
  padding: 10px;
  text-align: center;
}

/* 주문 상품 정보 테이블 스타일 */
#orderList th {
  background-color: #ddd;
  border: 1px solid #777;
  padding: 10px;
  text-align: center;
}

#orderList td {
  border: 1px solid #777;
  padding: 10px;
  text-align: center;
}

/* 계속 쇼핑하기 버튼 스타일 */
#buttons input[type="button"] {
  background-color: #333;
  border: none;
  color: #fff;
  cursor: pointer;
  font-size: 14px;
  margin-top: 20px;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  text-transform: uppercase;
}

#buttons input[type="button"]:hover {
  background-color: #555;
}

</style>
</head>
<body>
	<article>
		<h2>My Page(주문 상세 정보)</h2>
		<form name="formm" method="post">
			<h3>주문자 정보</h3>
			<table id="cartList">
				<tr>
					<th>주문일자</th>
					<th>주문번호</th>
					<th>주문자</th>
					<th>주문 총액</th>
				</tr>
				<tr>
					<td><fmt:formatDate value="${orderDetail.indate}" type="date" /></td>
					<td>${orderDetail.oseq}</td>
					<td>${orderDetail.mname}</td>
					<td><fmt:formatNumber type="currency" value="${totalPrice}" />
					</td>
				</tr>
			</table>
			<h3>주문 상품 정보</h3>
			<table id="cartList">
				<tr>
					<th>상품명</th>
					<th>상품별주문번호</th>
					<th>수량</th>
					<th>가격</th>
					<th>처리 상태</th>
				</tr>
				<c:forEach items="${orderList}" var="orderVO">
					<tr>
						<td>${orderVO.pname}</td>
						<td>${orderVO.odseq}</td>
						<td>${orderVO.quantity}</td>
						<td><fmt:formatNumber type="currency"
								value="${orderVO.price*orderVO.quantity}" /></td>
						<td><c:choose>
								<c:when test='${orderVO.result=="1"}'> 진행중 </c:when>
								<c:otherwise>
									<span style="color: red"> 처리완료 </span>
								</c:otherwise>
							</c:choose></td>
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