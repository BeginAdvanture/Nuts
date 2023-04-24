<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="admin/product/product.js"></script>
<style type="text/css">

/* article 태그에 대한 스타일 */
article {
  margin: 20px auto;
  max-width: 800px;
  padding: 20px;
  background-color: #f5f5f5;
  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
}

/* h1 태그에 대한 스타일 */
h1 {
  font-size: 2em;
  text-align: center;
  margin-bottom: 20px;
}

/* table 태그에 대한 스타일 */
table {
  margin: 0 auto;
  border-collapse: collapse;
  width: 100%;
  max-width: 800px;
}

/* th 태그에 대한 스타일 */
th {
  font-weight: bold;
  text-align: left;
  padding: 10px;
  background-color: #c0c0c0;
  border: 1px solid #000;
}

/* td 태그에 대한 스타일 */
td {
  text-align: center;
  padding: 10px;
  border: 1px solid #000;
}

/* 이미지에 대한 스타일 */
img {
  max-width: 100%;
  height: auto;
}

/* 버튼에 대한 스타일 */
.btn {
  display: inline-block;
  margin: 10px;
  padding: 10px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* 버튼에 호버 효과 추가 */
.btn:hover {
  background-color: #0062cc;
}



</style>


</head>
<body>
	<article>
		<h1>상품 상세 보기</h1>
		<form name="frm" method="post">
			<table id="list">
				<tr>
					<th>상품분류</th>
					<td colspan="5">${kind}</td>
				</tr>
				<tr>
					<th align="center">상품 명</th>
					<td colspan="5">${productVO.name}</td>
				</tr>
				<tr>
					<th>판매가 [A]</th>
					<td width="60">${productVO.price}</td>

				</tr>

				<tr>
					<th>성별</th>
					<td colspan="5">${productVO.content1}</td>
					<th>용량</th>
					<td colspan="5">${productVO.content2}</td>
					<th>회사</th>
					<td colspan="5">${productVO.content3}</td>
				</tr>
				<tr>
					<th>상품이미지</th>
					<td colspan="5" align="center"><img
						src="product_images/${productVO.image}" width="200pt"></td>
				</tr>
			</table>
			<input class="btn" type="button" value="수정"
				onClick="go_mod('${tpage}','${productVO.pseq}')"> <input
				class="btn" type="button" value="목록" onClick="go_list('${tpage}')">
		</form>

	</article>


</body>

</html>