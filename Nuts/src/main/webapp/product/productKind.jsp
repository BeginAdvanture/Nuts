<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="sub_menu.html"%>
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
		<h2>Item</h2>
		<c:forEach items="${productKindList }" var="productVO">
			<div id="item">
				<a href="NutsServlet?command=product_detail&pseq=${productVO.pseq}">
					<img src="product_images/${productVO.image}" />
					<h3>${productVO.name}</h3>
					<p>${productVO.price}</p>
				</a>
			</div>
		</c:forEach>
		<div class="clear"></div>
	</article>
</body>
</html>