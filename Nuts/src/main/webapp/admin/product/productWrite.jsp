<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
/* Set default styles for body and form elements */
body {
  font-family: Arial, sans-serif;
  font-size: 16px;
  line-height: 1.5;
  margin: 0;
  padding: 0;
}

form {
  margin: 0 auto;
  max-width: 800px;
  padding: 20px;
}

/* Style the form heading */
h1 {
  font-size: 24px;
  margin-bottom: 30px;
  text-align: center;
}

/* Style the table */
table {
  border-collapse: collapse;
  margin-bottom: 20px;
  width: 100%;
}

th, td {
  border: 1px solid #ccc;
  padding: 10px;
  text-align: left;
  vertical-align: top;
}

th {
  background-color: #f2f2f2;
  font-weight: bold;
  width: 150px;
}

/* Style the select element */
select {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border-radius: 5px;
}

/* Style the input elements */
input[type="text"],
input[type="number"],
input[type="file"] {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border-radius: 5px;
  border: 1px solid #ccc;
}

/* Style the textarea elements */
textarea {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border-radius: 5px;
  border: 1px solid #ccc;
}

/* Style the submit and cancel buttons */
input[type="submit"],
input[type="button"] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 12px 24px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 5px;
  cursor: pointer;
}

input[type="button"] {
  background-color: #f44336;
  margin-left: 20px;
}

input[type="submit"]:hover,
input[type="button"]:hover {
  opacity: 0.8;
}

/* Style error messages */
label.error {
  display: block;
  margin-top: 10px;
  color: #f44336;
  font-size: 14px;
  font-weight: bold;
}


#list {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

#list th {
  flex-basis: 100%;
  font-weight: bold;
}

#list td {
  flex-basis: calc(20% - 10px);
}

/* 세로 스타일 */
textarea {
  resize: vertical;
}
</style>
<title>상품등록</title>
<script type="text/javascript" src="admin/product/product.js"></script>
<script type="text/javascript">
	function go_save() {
		var theForm = document.frm;
		if (theForm.kind.value == '') {
			alert('상품분류를 선택하세요.');
			theForm.kind.focus();
		} else if (theForm.name.value == '') {
			alert('상품명을 입력하세요.');
			theForm.name.focus();
		} else if (theForm.price.value == '') {
			alert('판매가를 입력하세요.');
			theForm.price.focus();
		} else if (theForm.content1.value == '') {
			alert('상품상세를 입력하세요.');
			theForm.content1.focus();
		} else if (theForm.content2.value == '') {
			alert('상품상세를 입력하세요.');
			theForm.content2.focus();
		} else if (theForm.content3.value == '') {
			alert('상품상세를 입력하세요.');
			theForm.content3.focus();
		} else if (theForm.image.value == '') {
			alert('상품이미지를 입력하세요.');
			theForm.image.focus();
		} else {
			theForm.action = "NutsServlet?command=admin_product_write";
			theForm.submit();
		}
	}
	function go_mov() {
		location.href = "NutsServlet?command=admin_product_list";
	}
</script>
</head>
<body>
	<article>
		<h1>상품등록</h1>
		<form name="frm" method="post" enctype="multipart/form-data"
			action="NutsServlet?command=heart_insert">
			<table id="list">
				<tr>
					<th>상품분류</th>
					<td colspan="5"><select name="kind">
							<c:forEach items="${kindList}" var="kind" varStatus="status">
								<option value="${status.count}">${kind}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td width="343" colspan="5"><input type="text" name="name"
						size="47" maxlength="100" required></td>
				</tr>
				<tr>
					<th>판매가</th>
					<td width="70"><input type="number" name="price" size="11"
						required></td>
				</tr>
				<tr>
					<th>성별</th>
					<td colspan="5"><textarea name="content1" rows="8" cols="70"
							required></textarea></td>
					<th>용량</th>
					<td colspan="5"><textarea name="content2" rows="8" cols="70"
							required></textarea></td>
					<th>회사</th>
					<td colspan="5"><textarea name="content3" rows="8" cols="70"
							required></textarea></td>
				</tr>
				<tr>
					<th>상품이미지</th>
					<td width="343" colspan="5"><input type="file" name="image"
						required></td>
				</tr>
			</table>
			<input class="btn" type="submit" value="등록" onclick="go_save()"> <input
				class="btn" type="button" value="취소" onClick="go_mov()">
		</form>
	</article>
	<script type="text/javascript">
		function go_mov() {
			location.href = "NutsServlet?command=admin_product_list";
		}
	</script>
</body>

</html>