<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<article>
		<h1>Login</h1>
		<form method="post" action="NutsServlet?command=login">
			<fieldset>
				<legend></legend>
				<label>User ID</label> <input name="id" type="text" value="${id}"
					value="one"><br> <label>Password</label> <input
					name="pwd" type="password" value="1111"><br>
			</fieldset>
			<div class="clear"></div>
			<div id="buttons">
				<input type="submit" value="로그인" class="submit"> <input
					type="button" value="회원가입" class="cancel"
					onclick="location='NutsServlet?command=contract'">
					<input
					type="button" value="아이디 비밀번호 찾기" class="cancel"
					onclick="location='NutsServlet?command=check_form'">

			</div>
		</form>
	</article>
</body>
</html>