<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ include file="/admin/sub_menu.jsp"%><%@ taglib
	prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="admin/product/product.js"></script>
<style type="text/css">

body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

article {
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin: 20px auto;
  max-width: 800px;
  padding: 20px;
}

h1 {
  font-size: 32px;
  margin-top: 0;
  text-align: center;
}

table {
  border-collapse: collapse;
  margin: 20px 0;
  width: 100%;
}

th, td {
  border: 1px solid #ccc;
  padding: 10px;
  text-align: center;
}

th {
  background-color: #f1f1f1;
}

select, input[type="text"], textarea {
  border: 1px solid #ccc;
  padding: 5px;
  width: 100%;
}

input[type="checkbox"] {
  margin: 0 10px 0 0;
}

.btn {
  background-color: #008CBA;
  border: none;
  border-radius: 5px;
  color: #fff;
  cursor: pointer;
  font-size: 16px;
  margin-right: 10px;
  padding: 10px 20px;
  transition: background-color 0.3s ease;
}

.btn:hover {
  background-color: #006d8c;
}

img {
  display: block;
  margin: 10px auto;
  max-width: 100%;
}


</style>
</head>
<body>
	<article>
		<h1>상품수정</h1>
		<form name="frm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="pseq" value="${productVO.pseq}"> <input
				type="hidden" name="code"> <input type="hidden"
				name="nonmakeImg" value="${productVO.image}">
			<table id="list">
				<tr>
					<th>상품분류</th>
					<td colspan="5"><select name="kind">
							<c:forEach items="${kindList}" var="kind" varStatus="status">
								<c:choose>
									<c:when test="${productVO.kind==status.count}">
										<option value="${status.count}" selected="selected">${kind}</option>
									</c:when>
									<c:otherwise>
										<option value="${status.count}">${kind}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td width="343" colspan="5"><input type="text" name="name"
						size="47" maxlength="100" value="${productVO.name}"></td>
				</tr>
				<tr>
					<th>판매가</th>
					<td width="70"><input type="text" name="price" size="11"
						onKeyUp='NumFormat(this)' value="${productVO.price}"></td>
				</tr>
				<tr>
					<th>베스트상품</th>
					<td><c:choose>
							<c:when test='${productVO.bestyn=="y"}'>
								<input type="checkbox" name="bestyn" value="y" checked="checked">
							</c:when>
							<c:otherwise>
								<input type="checkbox" name="bestyn" value="n">
							</c:otherwise>
						</c:choose></td>
					<th>사용유무</th>
					<td><c:choose>
							<c:when test='${productVO.useyn=="y"}'>
								<input type="checkbox" name="useyn" value="y" checked="checked">
							</c:when>
							<c:otherwise>
								<input type="checkbox" name="useyn" value="n">
							</c:otherwise>
						</c:choose></td>
				</tr>
				<tr>
					<th>성별</th>
					<td colspan="5"><textarea name="content1" rows="8" cols="70">
 ${productVO.content1}
 
 </textarea></td>
					<th>용량</th>
					<td colspan="5"><textarea name="content2" rows="8" cols="70">
 ${productVO.content2}
 
 </textarea></td>
					<th>회사</th>
					<td colspan="5"><textarea name="content3" rows="8" cols="70">
 ${productVO.content3}
 
 </textarea></td>
				</tr>
				<tr>
					<th>상품이미지</th>
					<td colspan="5"><img src="product_images/${productVO.image}"
						width="200pt"> <br> <input type="file" name="image">
					</td>
				</tr>
			</table>
			<input class="btn" type="button" value="수정"
				onClick="go_mod_save('${tpage}','${productVO.pseq}')"> <input
				class="btn" type="button" value="취소" onClick="go_mov()">
		</form>
	</article>
</body>
</html>