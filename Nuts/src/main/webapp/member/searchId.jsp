<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background: url(../images/main.png);
	min-height: 100vh;
	overflow-x: hidden;
	justify-content: center;
	align-items: center;
}

header {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	padding: 30px 100px;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	z-index: 100;
}

.logo {
	font-size: 2em;
	color: #359381;
	pointer-events: none;
	margin-right: 270px;
}

.navigation a {
	text-decoration: none;
	color: #359381;
	padding: 6px 15px;
	border-radius: 20px;
	font-weight: 600;
}

.navigation a::after {
	content: '';
	position: absolute;
	left: 0;
	bottom: -6px;
	width: 100%;
	height: 3px;
	background: #fff;
	border-radius: 5px;
	transform: scaleX(0);
}

.navigation a:hover, .navigation a:active {
	background: #359381;
	color: #fff;
}

.navigation .btnLogin-popup {
	width: 130px;
	height: 50px;
	background: transparent;
	border: 2px solid #359381;
	outline: none;
	border-radius: 6px;
	cursor: pointer;
	font-size: 1.1em;
	color: #359381;
	font-weight: 500;
	margin-left: 10px;
	transition: .5s;
}

.navigation .btnLogin-popup:hover {
	background: #359381;
	color: #fff;
}

.parallax {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

#text {
	position: absolute;
	font-size: 5em;
	color: #fff;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, .2);
}

.parallax img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	pointer-events: none;
}

.sec {
	margin-top: 100px;
	position: relative;
	background: #003329;
	padding: 100px;
}

.sec h2 {
	font-size: 3em;
	color: #fff;
	margin-bottom: 10px;
}

.sec p {
	font-size: 1em;
	color: #fff;
	font-weight: 300;
}

.form-box h2 {
	font-size: 2em;
	color: #162938;
	text-align: center;
}

.input-box {
	position: relative;
	width: 100%;
	height: 50px;
	border-bottom: 2px solid #162938;
	margin: 30px 0;
}

.input-box label {
	position: absolute;
	top: 50%;
	left: 5px;
	transform: translateY(-50%);
	font-weight: 500;
	pointer-events: none;
	transition: .5s;
}

.input-box input:focus ~label, .input-box input:valid ~label {
	top: -5px;
}

.input-box input {
	width: 100%;
	height: 100%;
	background: transparent;
	border: none;
	outline: none;
	font-weight: 600;
	padding: 0 35px 0 5px;
}

.input-box .icon {
	position: absolute;
	right: 8px;
	font-size: 1.2em;
	color: #162938;
	line-height: 57px;
}

.remember-forgot {
	font-size: .9em;
	color: #162938;
	font-weight: 500;
	margin: -15px 0 15px;
	display: flex;
	justify-content: space-between;
}

.remember-forgot a {
	color: #162938;
	text-decoration: none;
}

.remember-forgot a:hover {
	text-decoration: underline;
}

.btn {
	width: 100%;
	height: 45px;
	border: none;
	background: #359381;
	outline: 6px;
	border-radius: 6px;
	cursor: pointer;
	font-size: 1em;
	color: #fff;
	font-weight: 500;
}

.login-register {
	font-size: .9em;
	color: #162938;
	text-align: center;
	font-weight: 500;
	margin: 25px 0 10px;
}

.login-register p a {
	color: #162938;
	text-decoration: none;
	font-weight: 600;
}

.login-register p a:hover {
	text-decoration: underline;
}

.wrapper .icon-close {
	position: absolute;
	top: 0;
	right: 0;
	width: 45px;
	height: 45px;
	background: #359381;
	font-size: 2em;
	color: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
	border-bottom-left-radius: 20px;
	cursor: pointer;
	z-index: 1;
}

.chu {
	height: 750px;
	background: url(background.jpg);
	background-color: #003329;
}

/*
nav {
    display: grid;
    grid-template-columns: auto auto;
    justify-content: space-between;
}*/
.logo1 {
	color: white;
	font-size: 35px;
	font-weight: 800;
	margin: 10px 0 0 20px;
}

.menu ul {
	display: grid;
	grid-template-columns: auto auto auto auto;
	grid-gap: 30px;
	list-style-type: none;
	margin-right: 40px;
	margin: 15px 20px 0 0;
}

.menu ul a {
	text-decoration: none;
	color: white;
	font-weight: 700;
}

.search__box {
	width: 430px;
	background: white;
	display: inline-block;
	padding: 20px 30px;
	position: relative;
	top: 50px;
	left: 50px;
	border-radius: 6px;
	box-shadow: 0 2px 2px 0 rgb(214, 214, 214);
}

.search__title {
	padding: 10px 0; /*세로 가로*/
	font-size: 30px;
	font-weight: 800;
	color: #359381;
}

.search__title1 {
	padding: 10px 0; /*세로 가로*/
	color: #fff;
}

table {
	width: 100%;
}

.search__sub__title {
	padding: 10px 0;
	font-size: 12px;
	font-weight: 600;
}

.search__input {
	height: 45px;
	width: 100%;
	color: #fff;
	font-size: 15px;
	border: 1px solid rgb(230, 227, 227);
}

.search__button {
	display: grid;
	justify-content: end;
}

.search__button button {
	color: white;
	font-weight: 700;
	margin-top: 15px;
}

.find {
	z-index: 112;
	border-radius: 1px;
	background: #fff;
	width: 50%%;
	height: auto;
	padding: 15px;
	border: none;
	outline: none;
	border-radius: 6px;
	cursor: pointer;
	font-size: 1em;
	color: black;
	font-weight: 500;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, .2);
	box-shadow: 0 2px 2px 0 rgb(214, 214, 214);
}

button {
	justify-content: center;
	margin-left: 50px;
	margin-bottom: 15px;
}

form {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 10px;
}

label {
	text-align: right;
}
</style>
</head>
<body>
	<section class="parallax">

		<section class="find">
			<h2>아이디/비밀번호 찾기 결과</h2>

			<c:if test="${not empty memberVO}">
				<p>입력하신 정보로 찾은 아이디는 ${memberVO.id} 입니다.</p>
				<p>비밀번호는 ${memberVO.pwd} 입니다.</p>
			</c:if>

			<c:if test="${not empty message}">
				<p>${message}</p>
			</c:if>

			<input type="button"
				style="padding: 3px; margin-left: 50px; margin-top: 15px; background: #359381; border: none; outline: none; border-radius: 6px; cursor: pointer; font-size: 1em; color: #fff; font-weight: 500;"
				value="메인으로 돌아가기" onclick="location='NutsServlet?command=main'" />
		</section>

	</section>

</body>
</html>
