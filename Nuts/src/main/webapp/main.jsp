<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, inital-scale=1.0">

<!-- swiper css -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

<!-- box icons -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<title>넛츠</title>

<link rel="shortcut icon" sizes="76x76" type="image/x-icon"
	href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">

<link rel="stylesheet" href="css/shopping.css">
<meta http-equiv="X-UA_Compatible" content="IE=edge">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" />

<script type="text/javascript" src="member/member.js"></script>


<style>
#item {
	width: 200px;
	margin: 0 13px;
}

#item img {
	width: 100%;
	height: auto;
}

#itemdetail  img {
	width: 190px;
	height: 200px;
	margin-right: 20px;
}

.input-box button {
	background: #359381;
	border: none;
	outline: none;
	border-radius: 6px;
	cursor: pointer;
	width: 25%;
	height: 30px;
	text-align: center;
	margin-top: 12px;
}

.btn {
	width: 100%;
	height: 45px;
	background: #359381;
	border: none;
	outline: none;
	border-radius: 6px;
	cursor: pointer;
	font-size: 1em;
	color: #fff;
	font-weight: 500;
}

#item a, #item a h3, #item a p {
	color: #fff;
	text-decoration: none;
}

#item {
	border: 2px solid #ccc;
	border-radius: 10px;
	padding: 10px;
	margin-bottom: 10px;
	transition: transform 0.3s ease-in-out;
	box-sizing: border-box;
	line-height: 1.2;
	font-size: 14px;
}

.container {
	position: relative;
	max-width: 1400px;
	width: 100%;
	padding: 40px;
}

.container .box {
	padding: 50px 30px;
	overflow: hidden;
}

.image img {
	width: 100px;
	height: 100px;
	object-fit: cover;
	border-radius: 50%;
	opacity: .8;
	border: 3px solid #fff;
}

.card {
	width: 250px;
	height: auto;
	background: transparent;
	box-shadow: inset 20px 20px 20px rgba(0, 0, 0, .05), 5px 25px 20px
		rgba(0, 0, 0, .05), 5px 20px 30px rgba(0, 0, 0, .05), inset -20px
		-20px 25px rgba(255, 255, 255, .9);
	border-radius: 61% 39% 52% 48%/44% 59% 41% 56%;
	transition: .5s ease-in-out;
	color: #fff;
}

.card:hover {
	border-radius: 50%;
}

.card::before {
	content: '';
	position: absolute;
	top: 35px;
	left: 70px;
	width: 35px;
	height: 35px;
	background: #fff;
	border-radius: 50%;
	opacity: .9;
}

.card::after {
	content: '';
	position: absolute;
	top: 70px;
	left: 90px;
	width: 15px;
	height: 15px;
	background: #fff;
	border-radius: 50%;
	opacity: .9;
}

.card .card-content {
	position: relative;
	display: flex;
	align-items: center;
	flex-direction: column;
	padding: 30px;
}

.card-content .name-profession {
	display: flex;
	align-items: center;
	flex-direction: column;
	margin-top: 10px;
	color: #333;
}

.name-profession .name {
	font-size: 20px;
	font-weight: 600;
}

.name-profession .profession {
	font-size: 15px;
	font-weight: 500;
}

.card-content .rating {
	display: flex;
	align-items: center;
	margin-top: 18px;
}

.card-content .rating i {
	font-size: 22px;
	color: var(--clr);
	margin: 0 2px;
	opacity: .75;
}

.card-content button {
	position: relative;
	padding: 8px 35px;
	background: var(--clr);
	border: none;
	outline: none;
	border-radius: 40px;
	box-shadow: 0 2px 2px rgba(0, 0, 0, .25);
	cursor: pointer;
	color: #000;
	font-weight: 500;
	opacity: .75;
	margin-top: 30px;
}

.card-content button::before {
	content: '';
	position: absolute;
	top: 6px;
	left: 50%;
	transform: translateX(-50%);
	width: 55%;
	height: 5px;
	background: rgba(255, 255, 255, .5);
	border-radius: 5px;
}

.box .swiper-button-next, .box .swiper-button-prev {
	color: #666;
}

.box .swiper-button-next {
	right: 0;
}

.box .swiper-button-prev {
	left: 0;
}

.box .swiper-pagination-bullet {
	width: 12px;
	height: 12px;
	background: #666;
}

#item h3 {
	font-size: 16px;
}

#item:hover {
	transform: scale(1.05);
}

#item a:hover, #item a h3:hover, #item a p:hover {
	color: #00f;
}

footer {
  background-color: #359381;
  color: #333;
  padding: 30px;
  text-align: center;
}

.footer-container {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  max-width: 900px;
  margin: 0 auto;
}

.footer-nav ul {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
}

.footer-nav ul li {
  margin-right: 20px;
}

.footer-nav ul li:last-child {
  margin-right: 0;
}

.footer-nav ul li a {
  color: #333;
  text-decoration: none;
  font-weight: bold;
  transition: color 0.3s ease;
}

.footer-nav ul li a:hover {
  color: #359381;
}

.footer-follow {
  display: flex;
  align-items: center;
}

.footer-follow span {
  margin-right: 10px;
}

.social-icon {
  display: inline-block;
  width: 40px;
  height: 40px;
  background-color: #f2f2f2;
  color: #fff;
  border-radius: 50%;
  text-align: center;
  line-height: 40px;
  margin-right: 10px;
  transition: background-color 0.3s ease;
}

.social-icon:hover {
  background-color: #005f6b;
}

.fa {
  font-size: 20px;
}
.pan button{
    position: absolute;
    left: 100px;
    font-weight: 700;
    margin-top: 15px;
    width: 150px;
    top: 3900px;
}
.photo{
    position: absolute;
    right: 120px;
    top: 3670px;
}
#event{
    font-size: 4em;
    width: 258px;
    color: white;
    font-family: sans-serif;
    position: absolute;
    top: 3670px;
    left:100px;
    animation: slide 0.01s ease-out;
}
</style>

</head>
<body>
	<header>
		<h2 class="logo">Nuts</h2>
		<nav class="navigation">
		
			<a href="NutsServlet?command=main">Home</a> <a href="#" id="ai-link">AI 추천 받기</a> <a
				href="https://port-0-pharmacyback-1maxx2algpyhxqx.sel3.cloudtype.app/">주변 약국 찾기</a> <a href="NutsServlet?command=board_page">공지사항</a>
			<button class="btnLogin-popup">
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
           	Login
            </c:when>
					<c:otherwise>

						<a style="color: red" href="NutsServlet?command=logout">LOGOUT</a>
					</c:otherwise>
				</c:choose>
			</button>

		</nav>
	</header>




	<section class="parallax">
		<div class="wrapper">
			<span class="icon-close"><ion-icon name="close-outline"></ion-icon></span>

			<div class="form-box login">
				<h2>Login</h2>
				<form method="post" action="NutsServlet?command=login">
					<div class="input-box">
						<span class="icon"><ion-icon name="person-outline"></ion-icon>
						</span> <input name="id" type="text" value="${id}" value="one" required />
						<label>Id</label>
					</div>
					<div class="input-box">
						<span class="icon"><ion-icon name="lock-open-outline"></ion-icon>
						</span> <input name="pwd" type="password" value="1111" required>
						<label>Password</label>
					</div>
					<div class="remember-forgot">
						<a style="cursor: pointer;"
							onclick="location='NutsServlet?command=check_form'">Forgot
							Password?</a>
					</div>
					<button type="submit" class="btn">Login</button>
					<div class="login-register">
						<p>
							아직 계정이 없으신가요? <a href="#" class="register-link">Register </a>
						</p>
					</div>
				</form>
			</div>


			<div class="form-box register">
				<h2>Registration</h2>
				<form id="join" action="NutsServlet?command=join" method="post"
					name="formm">
					<div class="input-box">
						<span class="icon"><ion-icon name="person-circle-outline"></ion-icon>
						</span> <input type="text" name="name"> <label>UserName</label>
					</div>




					<div class="input-box">
						<span class="icon"><ion-icon name="person-outline"></ion-icon>
						</span> <input type="text" name="id" required /> <label>Id</label> <input
							type="hidden" name="reid"> <input type="button"
							value="중복 체크" class="dup"
							style="background: #359381; border: none; outline: none; border-radius: 6px; cursor: pointer; width: 25%; height: 30px; text-align: center; margin-top: 12px; margin-left:195px;"
							onclick="idcheck()">
					</div>




					<div class="input-box">
						<span class="icon"><ion-icon name="lock-open-outline"></ion-icon>
						</span> <input type="password" name="pwd" required> <label>Password</label>
					</div>
					<div class="input-box">
						<span class="icon"><ion-icon name="lock-open-outline"></ion-icon>
						</span> <input type="password" name="pwdCheck" required> <label>Retype
							Password</label>
					</div>
					<div class="input-box">
						<span class="icon"><ion-icon name="lock-open-outline"></ion-icon>
						</span> <input type="text" name="email" required> <label>E-Mail</label>
					</div>


					<div class="input-box">
						<span class="icon"><ion-icon name="lock-open-outline"></ion-icon>
						</span> <input type="text" name="zipNum" required> <label>Zip
							Code</label> <input type="button" value="주소 찾기"
							style=" background: #359381; border: none; outline: none; border-radius: 6px; cursor: pointer; width: 25%; height: 30px; text-align: center; margin-top: 12px; margin-left:195px;"
							class="dup" onclick="post_zip()">
					</div>



					<div class="input-box">
						<span class="icon"><ion-icon name="lock-open-outline"></ion-icon>
						</span> <input type="text" name="addr1" required> <input
							type="text" name="addr2" required> <label>Address</label>
					</div>



					<div class="input-box">
						<span class="icon"><ion-icon name="lock-open-outline"></ion-icon>
						</span> <input type="text" name="phone" required> <label>Number</label>
					</div>



					<div class="remember-forgot">I agree to the terms &
						conditions</div>
					<button type="submit" class="btn" onclick="go_save()">Register</button>
					<div class="login-register">
						<p>
							이미 계정이 있으신가요? <a href="#" class="login-link">Login </a>
						</p>
					</div>
				</form>
			</div>
		</div>
		<img src="images/hill1.png" id="hill1"> <img
			src="images/hill2.png" id="hill2"> <img src="images/hill3.png"
			id="hill3"> <img src="images/hill4.png" id="hill4"> <img
			src="images/hill5.png" id="hill5"> <img src="images/tree.png"
			id="tree">
		<h2 id="text">Nuts</h2>
		<img src="images/leaf.png" id="leaf"> <img
			src="images/plant.png" id="plant">
	</section>

	<section class="sec" style="margin-bottom: -40px; margin-top: 15px;">
		<h2>Nuts는 ...</h2>
		<p>회원들에게 필요한 약을 추천해주는 사이트입니다.</p>
		<br> <br>
	</section>
	<section class="chu">

		<div class="search__box">
			<div class="search__title">1,022,214 명이</div>
			<div class="search__title1" style="color: black">지금 필요한 영양성분을
				확인했어요.</div>
			<table>
				<tr>
					<td colspan="2" class="search__sub__title">나이</td>
				</tr>
				<tr>
					<td colspan="2"><input style="color:black;"  placeholder=" 만 13세 이상만 가능합니다."
						class="search__input" type="text" /></td>
				</tr>
				<tr>
					<td colspan="2" class="search__sub__title">몸무게</td>
				</tr>
				<tr>
					<td colspan="2"><input  style="color:black;"  placeholder=" kg" class="search__input"
						type="text" /></td>
				</tr>




				<tr>
					<td class="search__sub__title">생년월일</td>
					<td class="search__sub__title">성별</td>
				</tr>
				<tr>
					<td><input class="search__input" style="color:black;"  type="date"></td>
					<td><input name="sex" class="search__input" type="radio">male</td>
					<td><input name="sex" class="search__input" type="radio">female</td>
				</tr>
				
			</table>
			<div class="search__button">
				<button type="button" class="btn btn-success" onclick="return go_ai()">나에게 부족한 성분은?</button>

			</div>
		</div>

	</section>


	<main>
		<section class="mol">
			<section class="mol2">

				<div class="sec__title">넛츠 둘러보기</div>

				<div class="container">
					<div class="box mySwiper">
						<div class="content swiper-wrapper">
							<div class="card swiper-slide">
								<div class="card-content">
									<div class="image">
										<img src="product_images/allList2.png" alt="">
									</div>
									<!--문자입력-->
									<div class="name-profession">
										<span class="name" style="color: #fff;">전체</span> <span
											class="profession" style="color: #fff;">보기</span>
									</div>

									<div class="rating">
										<i class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bxs-star' style="--clr: #ff0f5b"></i>
									</div>

									<button style="--clr: #ff0f5b" onclick="window.location.href = 'NutsServlet?command=AllList_form'; return false;">View More</button>
								</div>
							</div>

							<div class="card swiper-slide">
								<div class="card-content">
									<div class="image">
										<img src="product_images/eye2.png" alt="">
									</div>
									<!--문자입력-->
									<div class="name-profession">
										<span class="name" style="color: #fff;">눈건강</span> <span
											class="profession" style="color: #fff;">보기</span>
									</div>

									<div class="rating">
										<i class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bx-star' style="--clr: #be01fe"></i>
									</div>

									<button style="--clr: #be01fe" onclick="window.location.href = 'NutsServlet?command=kindpick_form&kind=1'; return false;">View More</button>
								</div>
							</div>

							<div class="card swiper-slide">
								<div class="card-content">
									<div class="image">
										<img src="product_images/kidney2.png" alt="">
									</div>
									<!--문자입력-->
									<div class="name-profession">
										<span class="name" style="color: #fff;">간건강</span> <span
											class="profession" style="color: #fff;">보기</span>
									</div>

									<div class="rating">
										<i class='bx bxs-star' style="--clr: #fea401"></i> <i
											class='bx bxs-star' style="--clr: #fea401"></i> <i
											class='bx bxs-star' style="--clr: #fea401"></i> <i
											class='bx bxs-star' style="--clr: #fea401"></i> <i
											class='bx bx-star' style="--clr: #fea401"></i>
									</div>

									<button style="--clr: #fea401" onclick="window.location.href = 'NutsServlet?command=kindpick_form&kind=3'; return false;">View More</button>
								</div>
							</div>

							<div class="card swiper-slide">
								<div class="card-content">
									<div class="image">
										<img src="product_images/intestinal2.png" alt="">
									</div>
									<!--문자입력-->
									<div class="name-profession">
										<span class="name" style="color: #fff;"> 장건강</span> <span
											class="profession" style="color: #fff;">보기</span>
									</div>

									<div class="rating">
										<i class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bx-star' style="--clr: #ff0f5b"></i> <i
											class='bx bx-star' style="--clr: #ff0f5b"></i>
									</div>

									<button style="--clr: #ff0f5b" onclick="window.location.href = 'NutsServlet?command=kindpick_form&kind=6'; return false;">View More</button>
								</div>
							</div>

							<div class="card swiper-slide">
								<div class="card-content">
									<div class="image">
										<img src="product_images/Skin2.png" alt="">
									</div>
									<!--문자입력-->
									<div class="name-profession">
										<span class="name" style="color: #fff;">피부건강</span> <span
											class="profession" style="color: #fff;">보기</span>
									</div>

									<div class="rating">
										<i class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i>
									</div>

									<button style="--clr: #be01fe"  onclick="window.location.href = 'NutsServlet?command=kindpick_form&kind=4'; return false;">View More</button>
								</div>
							</div>

							<div class="card swiper-slide">
								<div class="card-content">
									<div class="image">
										<img src="product_images/bone2.png" alt="">
									</div>
									<!--문자입력-->
									<div class="name-profession">
										<span class="name" style="color: #fff;">뼈건강</span> <span
											class="profession" style="color: #fff;">보기</span>
									</div>

									<div class="rating">
										<i class='bx bxs-star' style="--clr: #fea401"></i> <i
											class='bx bxs-star' style="--clr: #fea401"></i> <i
											class='bx bxs-star' style="--clr: #fea401"></i> <i
											class='bx bx-star' style="--clr: #fea401"></i> <i
											class='bx bx-star' style="--clr: #fea401"></i>
									</div>

									<button style="--clr: #fea401" onclick="window.location.href = 'NutsServlet?command=kindpick_form&kind=2'; return false;">View More</button>
								</div>
							</div>

							<div class="card swiper-slide">
								<div class="card-content">
									<div class="image">
										<img src="product_images/blood2.png" alt="">
									</div>
									<!--문자입력-->
									<div class="name-profession">
										<span class="name" style="color: #fff;">혈관건강</span> <span
											class="profession" style="color: #fff;">보기</span>
									</div>

									<div class="rating">
										<i class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bxs-star' style="--clr: #ff0f5b"></i> <i
											class='bx bx-star' style="--clr: #ff0f5b"></i> <i
											class='bx bx-star' style="--clr: #ff0f5b"></i>
									</div>

									<button style="--clr: #ff0f5b" onclick="window.location.href = 'NutsServlet?command=kindpick_form&kind=5'; return false;">View More</button>
								</div>
							</div>

							<div class="card swiper-slide">
								<div class="card-content">
									<div class="image">
										<img src="product_images/vitality2.png" alt="">
									</div>
									<!--문자입력-->
									<div class="name-profession">
										<span class="name" style="color: #fff;">피로회복</span> <span
											class="profession" style="color: #fff;">보기</span>
									</div>

									<div class="rating">
										<i class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bxs-star' style="--clr: #be01fe"></i> <i
											class='bx bx-star' style="--clr: #be01fe"></i>
									</div>

									<button style="--clr: #be01fe" onclick="window.location.href = 'NutsServlet?command=kindpick_form&kind=7'; return false;">View More</button>
								</div>
							</div>

						</div>

						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-pagination"></div>
					</div>
				</div>


			</section>
			<section>
				<div class="sec__title">BEST 상품을 만나보세요</div>
				<div class="choo__box"
					style="  display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-gap: 10px;
    margin-top: 20px;">
					<c:forEach items="${bestProductList}" var="productVO">
						<div id="item">
							<a
								href="NutsServlet?command=product_detail&pseq=${productVO.pseq}">
								<img src="product_images/${productVO.image}" />
								<h3>상품명 : ${productVO.name}</h3>
								<p>가격 : ${productVO.price}</p>
								<div class="info1">성분 표를 반드시 확인하세요</div>
								<div class="info3">
									<span class="star">⭐⭐⭐⭐⭐</span> <span class="count">185</span>
									<span class="type">슈퍼호스트</span>
								</div>
							</a>
						</div>
					</c:forEach>


				</div>
			</section>
			<section>
				<div class="sec__title">NEW 신상 아이템</div>
				<div class="home__box">

					<c:forEach items="${newProductList}" var="productVO">
						<div id="item">
							<a
								href="NutsServlet?command=product_detail&pseq=${productVO.pseq}">
								<img src="product_images/${productVO.image}" />
								<h3>상품명 : ${productVO.name}</h3>
								<p>가격 : ${productVO.price}</p>
								<div class="info1">성분 표를 반드시 확인하세요</div>
								<div class="info3">
									<span class="star">⭐⭐⭐⭐</span> <span class="count">125</span> <span
										class="type">슈퍼호스트</span>
								</div>
							</a>
						</div>
					</c:forEach>

				</div>
			</section>
			<section>
				<div class="sec__title">넛츠의 다양한 이용후기를 만나보세요!</div>
				<div class="sec__content" style="color: #fff;">여러분의 건강 꿀팁을 알려주세요.</div>
			</section>

		</section>
	</main>
	<section class="pan">
		<div class="ad2">
			<button type="button" style="top: 4000;" class="btn btn-light" onclick="location='NutsServlet?command=board_list'">게시판
				바로가기</button>

			<h1 id="event" style="top: 3670;">ENJOY YOUR HEALTH</h1>
			<img class="photo" style="top: 3670;"
				src="https://image.istarbucks.co.kr/upload/common/img/main/2022/2022_NewYear_pick_img.png" />
		</div>
	</section>

	<script type="module"
		src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

	<script type="text/javascript" src="main.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	<script type="text/javascript">
	var swiper = new Swiper(".mySwiper", {
	    slidesPerView: 2.5,
	    spaceBetween: 50,
	    
	    grabCursor: true,
	    pagination: {
	        el: ".swiper-pagination",
	        clickable: true,
	        dynamicBullets: true,
	    },
	    navigation: {
	        nextEl: ".swiper-button-next",
	        prevEl: ".swiper-button-prev",
	    },
	});
	 // 링크 클릭 이벤트 처리
	  document.getElementById("ai-link").addEventListener("click", function(event) {
	    event.preventDefault(); // 링크의 기본 동작을 막음
	    go_ai(); // go_ai 함수 호출
	  });

	  // go_ai 함수
	  function go_ai() {
	    location.href = "ai/pill.html"; // qna.html 페이지로 이동
	  }
	</script>
	<footer>
		<div class="footer-container">
			<div class="footer-nav">
				<ul>
				<a href="NutsServlet?command=admin_login_form" style="width:100px;"> ADMIN)</a>
					<li><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<div class="footer-follow">
				<span>Follow us:</span> <a href="#" class="social-icon"><i
					class="fa fa-facebook"></i></a> <a href="#" class="social-icon"><i
					class="fa fa-twitter"></i></a> <a href="#" class="social-icon"><i
					class="fa fa-instagram"></i></a>
			</div>
			<div>
				 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum elit in velit pretium varius. Donec rhoncus euismod mi, eu feugiat purus cursus in.</p>
			</div>
		</div>
	</footer>


</body>
</html>