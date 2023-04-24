<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
<link rel="stylesheet" href="css/shopping.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
article {
	background-color: #F7F7F7;
	padding: 20px;
	margin: 20px;
	border: 1px solid #CCCCCC;
	border-radius: 5px;
	box-shadow: 0 0 5px #CCCCCC;
}

#itemdetail {
	margin: 20px;
	padding: 20px;
	background-color: #FFFFFF;
	border: 1px solid #CCCCCC;
	border-radius: 5px;
}

fieldset {
	border: none;
}

legend {
	font-size: 20px;
	font-weight: bold;
}

input[type="number"] {
	width: 60px;
	padding: 5px;
	margin: 10px 0;
	border-radius: 3px;
	border: 1px solid #CCCCCC;
}

.submit {
	background-color: #359381;
	color: #FFFFFF;
	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	cursor: pointer;
}

.cancel {
	background-color: #FFFFFF;
	color: #008CBA;
	border: 1px solid #008CBA;
	padding: 10px 20px;
	border-radius: 3px;
	cursor: pointer;
}

.heart {
	background-color: #F44336;
	color: #FFFFFF;
	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	cursor: pointer;
}

.clear {
	clear: both;
}

.btn-qna {
	display: inline-block;
	background-color: #fff;
	border: 2px solid #ccc;
	color: #333;
	font-size: 16px;
	font-weight: bold;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
	transition: background-color 0.3s ease;
}

.btn-qna:hover {
	background-color: #ccc;
	color: #fff;
}

a.product-link {
	text-decoration: none;
	border-bottom: none;
}

h3 {
	font-size: 19px;
	margin-bottom: 10px;
}

article img {
	max-width: 100%;
	height: auto;
}
</style>
</head>
<body>
	<article>
		<div id="itemdetail">
			<form method="post" name="formm">
				<fieldset>
					<legend>상품 상세 정보</legend>
					<a href="NutsServlet?command=product_detail&pseq=${productVO.pseq}">
						<span style="float: left;"> <img
							src="product_images/${productVO.image}" />
					</span>
						<h2 style="text-decoration: underline; color: #359381;">${productVO.name}</h2>
					</a> <label>가 격 :</label>
					<p>${productVO.price}원</p>

					<label>수 량 :</label> <input type="number" name="quantity" size="2"
						value="1"><br> <input type="hidden" name="pseq"
						value="${productVO.pseq}"><br>
					<h3>섭취 대상: ${productVO.content1}</h3>
					<h3>용량: ${productVO.content2}</h3>
					<h3>회사: ${productVO.content3}</h3>
					<br>
					<p style="font-size: 13px; margin-top:15px; margin-bottom: 15px;"> 임상 실험을 거친 균주 Jarro-Dophilus® EPS는 임상 실험을 거친 균주로 만들어진 상온 보관
						가능한 다균주 프로바이오틱입니다. Jarro-Dophilus® EPS는 8가지 프로바이오틱 생물종, 즉 락토바실러스,
						비피도박테리움, 락티카제이바실러스‡, 락티플란티바실러스‡, 락토코커스, 페디오코커스를 혼합하여 각각의 균주는 과학적인
						연구를 통해 임상 검증되었으며, 장과 면역 건강에 미치는 긍정적인 영향에 따라 균주 명칭(예: R0011)이
						붙여졌습니다.<br> 공식적인 재분류를 기초로 업데이트. Enhanced Probiotic System™

						Jarro-Dophilus® EPS는 독점 기술인 EnteroGuard® 코팅, 공기와 수분의 침투를 막아 주는
						블리스터 포장 및 실온에서 안정성이 우수한 균주를 사용하는 Enhanced Probiotic System™
						포뮬라입니다. 이를 통해, 최대량의 프로바이오틱 균주를 장내에 전달하여 완전한 효과를 낼 수 있습니다.</p>
				</fieldset>

				<div class="clear"></div>
				<div id="buttons">
					<input type="button" value="장바구니에 담기" class="submit"
						onclick="go_cart()"> <input type="button" value="찜하기"
						class="heart" onclick="go_heart()"> <input type="reset"
						value="취소" class="cancel">
					<div style="float: right;">
						<a href="NutsServlet?command=qna_list" class="btn-qna">직원과
							상담하기</a>
					</div>
				</div>
			</form>
		</div>
	</article>
	<article>
		<img style="margin-left: 340px;" alt="" src="tt3.png"> <img
			style="margin-left: 200px;" alt="tt1.png" src="tt1.png"> <img
			style="margin-left: 200px;" alt="tt2.png" src="tt2.png">

	</article>
	<article>
		<div id="disqus_thread"></div>
		<script>
			/**
			 *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
			 *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
			/*
			var disqus_config = function () {
			this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
			this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
			};
			 */
			(function() { // DON'T EDIT BELOW THIS LINE
				var d = document, s = d.createElement('script');
				s.src = 'https://nuts1111.disqus.com/embed.js';
				s.setAttribute('data-timestamp', +new Date());
				(d.head || d.body).appendChild(s);
			})();
		</script>
		<noscript>
			Please enable JavaScript to view the <a
				href="https://disqus.com/?ref_noscript">comments powered by
				Disqus.</a>
		</noscript>

	</article>
</body>
</html>