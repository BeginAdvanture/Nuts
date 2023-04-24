<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="sub_menu.jsp"%>

<!DOCTYPE html>
<html>
<head>

<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
<link rel="stylesheet" href="css/shopping.css">
<meta charset="UTF-8">
<title>Insert title here</title>

  <style>
        /* 전체 스타일 */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
css
Copy code
    /* 상단 타이틀 스타일 */
    h1 {
        background-color: #f2f2f2;
        margin: 0;
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    /* 아티클 스타일 */
    article {
        margin: 20px auto;
        max-width: 800px;
        padding: 20px;
        border: 1px solid #ddd;
        box-shadow: 0 0 5px #ddd;
    }

    /* 장바구니 목록 스타일 */
    #cartList {
        width: 100%;
        border-collapse: collapse;
    }

    #cartList th, #cartList td {
        text-align: center;
        padding: 10px;
        border: 1px solid #ddd;
    }

    #cartList th {
        background-color: #f2f2f2;
        font-weight: bold;
    }

    /* 삭제하기 버튼 스타일 */
    #buttons {
        margin-top: 20px;
    }

    #buttons input[type="button"] {
        font-size: 16px;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        margin-right: 10px;
    }

    #buttons input[type="button"].cancel {
        background-color: #999;
    }

    #buttons input[type="button"].submit {
        background-color: #1c9dd5;
    }
    img {
  width: 200px;
  height: auto;
}
    a {
  text-decoration: none;
  color: black;
}
</style>
</head>
<body>
	<article>
		<h2>Cart List</h2>
		<form name="formm" method="post">
			<c:choose>
				<c:when test="${cartList.size() == 0}">
					<h3 style="color: #359381; text-align: center;">장바구니가 비었습니다.</h3>
				</c:when>
				<c:otherwise>
					<table id="cartList">
						<tr>
							<th>상품명</th>
							<th>수량</th>
							<th>가격</th>
							<th>주문일</th>
							<th>삭제</th>
						</tr>
		
						<c:forEach items="${cartList}" var="cartVO">
							<tr>
								<td><a
									href="NutsServlet?command=product_detail&pseq=${cartVO.pseq}">
										<h3>${cartVO.pname}</h3>
								</a></td>
								<td>${cartVO.quantity}</td>
								<td><fmt:formatNumber
										value="${cartVO.price*cartVO.quantity}" type="currency" /></td>
								<td><fmt:formatDate value="${cartVO.indate}" type="date" /></td>
								<td><input type="checkbox" name="cseq"
									value="${cartVO.cseq}"></td>
									<span style="float: left;"> <img
							src="product_images/${cartVO.image}" />
					</span>
							</tr>
						</c:forEach>

						<tr>
							<th colspan="2">총 액</th>
							<th colspan="2"><fmt:formatNumber value="${totalPrice}"
									type="currency" /><br></th>
							<th><a href="#" onclick="go_cart_delete()"><h3>삭제하기</h3></a></th>
						</tr>
					</table>
				</c:otherwise>
			</c:choose>

			<div class="clear"></div>

			<div id="buttons" style="float: right">
				<input type="button" value="쇼핑 계속하기" class="cancel"
					onclick="location.href='NutsServlet?command=main'">
				<c:if test="${cartList.size() != 0}">
					<input type="button" value="주문하기" class="submit"
						onclick="go_order_insert()">
				</c:if>
			</div>
		</form>
	</article>
</body>
</html>