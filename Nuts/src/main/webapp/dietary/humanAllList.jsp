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

<link rel="stylesheet" href="css/liststyle.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" type="text/css" href="css/liststyle.css">
<style type="text/css">

body {
    background-image: url('product_images/hill5.png'), url('product_images/hill6.png');
	background-attachment: fixed;
	background-size: 100% auto;
	background-repeat: no-repeat;
}
</style>
</head>
<body>

	<header>
		<h2 class="logo">Nuts</h2>
		<nav class="navigation">
			<a href="NutsServlet?command=main">Home</a> <a href="#">About</a> <a
				href="#">Service</a> <a href="#">Contact</a>
			<button class="btnLogin-popup">
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">Login</c:when>
				<c:otherwise>
					<a style="color: red" href="NutsServlet?command=logout">LOGOUT</a>
				</c:otherwise>
				</c:choose>
			</button>
		</nav>
	</header>


	<table>
		<main>
		<script src="main.js"></script>
		<script src="liststyle.css"></script>
		<section>
			
			<div class="menuList" style="display: flex; justify-content: center;">			
                 	<div class="menu" style="margin: 0 40px;">
                        <a href="NutsServlet?command=AllList_form">
                        	<img src="product_images/allList2.png" >
                        </a>
                        <p>&nbsp;&nbsp;&nbsp;전체</p>
                   </div>
                   
                  	<div class="menu" style="margin: 0 40px;">
                        <a href="NutsServlet?command=kindpick_form&kind=1">
                        	<img src="product_images/eye2.png" >
                        </a>
                        <p>&nbsp;눈건강</p>
                   </div>
                   
                   <div class="menu" style="margin: 0 40px;">
                        <a href="NutsServlet?command=kindpick_form&kind=3">
                        	<img src="product_images/kidney2.png" >
                        </a>
                        <p>&nbsp;&nbsp;간건강</p>
                   </div>
                   
                   <div class="menu" style="margin: 0 40px;">
                        <a href="NutsServlet?command=kindpick_form&kind=6">
                        	<img src="product_images/intestinal2.png" >
                        </a>
                        <p>&nbsp;장건강</p>
                   </div>
                   
                   <div class="menu" style="margin: 0 40px;">
                        <a href="NutsServlet?command=kindpick_form&kind=4">
                        	<img src="product_images/Skin2.png" >
                        </a>
                        <p>피부건강</p>
                   </div>
                   
                   <div class="menu" style="margin: 0 40px;">
                        <a href="NutsServlet?command=kindpick_form&kind=2">
                        	<img src="product_images/bone2.png" >
                        </a>
                        <p>&nbsp;뼈건강</p>
                   </div>
                   
                   <div class="menu" style="margin: 0 40px;">
                        <a href="NutsServlet?command=kindpick_form&kind=5">
                        	<img src="product_images/blood2.png" >
                        </a>
                        <p>혈관건강</p>
                   </div>
                   
                   <div class="menu" style="margin: 0 40px;">
                        <a href="NutsServlet?command=kindpick_form&kind=7">
                        	<img src="product_images/vitality2.png" >
                        </a>
                        <p>피로회복</p>
                   </div>
               </div>

			<div class="button-group">
				<input type="button" value="가격낮은순" onclick="window.location.href = 'NutsServlet?command=humanPickAllListPrice_form&human=${human}'; return false;">
				<input type="button" value="조회많은순" onclick="window.location.href = 'NutsServlet?command=humanPickAllListCaoont_form&human=${human}'; return false;">
				<input type="button" value="성별무관" onclick="window.location.href = 'NutsServlet?command=humanAllList_form&human=1'; return false;">
				<input type="button" value="여자" onclick="window.location.href = 'NutsServlet?command=humanAllList_form&human=2'; return false;">
				<input type="button" value="남자" onclick="window.location.href = 'NutsServlet?command=humanAllList_form&human=3'; return false;">
				<input type="button" value="어린이" onclick="window.location.href = 'NutsServlet?command=humanAllList_form&human=4'; return false;">
			</div>
		</section>
		</main>

		<c:forEach var="products" items="${humanList}">
		<div class="container" style=" float: left; width: 33%;">
        <div class="box_mySwiper">
            <div class="content swiper-wrapper">
                <div class="card swiper-slide">
                    <div class="card-content">
                        <div class="image">
                            <!--이미지-->
                            <a href="NutsServlet?command=product_detail&pseq=${products.pseq}">
                            <img src="product_images/${products.image}" alt="">
                           	</a>
                        </div>
                            <!--문자입력-->
                        <div class="name-profession">
                            <span class="name">${products.name}</span>
                            <span class="profession">${products.price} 원</span>
                        </div>
						<a href="NutsServlet?command=product_detail&pseq=${products.pseq}">
                        <button style="--clr:#ff0f5b">구매</button>
                        </a>
                        <button style="--clr:#be01fe">찜하기</button>
                        <button style="--clr:#fea401">장바구니</button>
                    </div>
                </div>
           </div>
		</div>
		</div>	
		</c:forEach>
		
		 <c:forEach var="products" items="${humanPickcaoontList}">
		<div class="container" style=" float: left; width: 33%;">
        <div class="box_mySwiper">
            <div class="content swiper-wrapper">
                <div class="card swiper-slide">
                    <div class="card-content">
                        <div class="image">
                            <!--이미지-->
                            <a href="NutsServlet?command=product_detail&pseq=${products.pseq}">
                            <img src="images/${products.image}" alt="">
                           	</a>
                        </div>
                            <!--문자입력-->
                        <div class="name-profession">
                            <span class="name">${products.name}</span>
                            <span class="profession">${products.price} 원</span>
                        </div>
						<a href="NutsServlet?command=product_detail&pseq=${products.pseq}">
                        	<button style="--clr:#ff0f5b">구매</button>
                        </a>
                        <a href="NutsServlet?command=go_cart()">
                        	<button style="--clr:#be01fe">찜하기</button>
                        </a>
                        <a href="NutsServlet?command=go_heart()">	
                        	<button style="--clr:#fea401">장바구니</button>
                    	</a>
                    </div>
                </div>
           </div>
		</div>
		</div>	
		</c:forEach>
	</table>
</body>
</html>