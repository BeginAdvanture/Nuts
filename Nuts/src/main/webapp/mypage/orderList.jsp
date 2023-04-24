<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>


<link rel="stylesheet" href="css/shopping.css">
<script>
	var IMP = window.IMP;
	IMP.init("imp20177624");

	function requestPay() {
		IMP.request_pay({
			pg : 'kakaopay.TC0ONETIME',
			pay_method : 'card',
			merchant_uid : "57008833-33004",
			name : 'admin',
			amount : 1004,
			buyer_email : 'Iamport@chai.finance',
			buyer_name : '포트원 기술지원팀',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456'
		}, function(rsp) { // callback
			if (rsp.success) {
				console.log(rsp);
			} else {
				console.log(rsp);
			}
		});
	}
</script>
<style type="text/css">
/* Reset the default styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Body styles */
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	color: #333;
	font-size: 1.1rem;
	line-height: 1.5;
	margin: 0 100px 100px;
	padding: 100px
}

/* Header styles */
header {
	background-color: #333;
	color: #fff;
	padding: 1rem;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

/* Logo styles */
.logo {
	font-size: 1.5rem;
	font-weight: bold;
}

/* Navigation styles */
nav ul {
	display: flex;
	list-style: none;
}

nav li {
	margin-left: 1rem;
}

nav a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

/* Main styles */
main {
	max-width: 1200px;
	margin: 0 auto;
	padding: 1rem;
}

/* Table styles */
table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 100%;
	max-width: 1200px;
}

th, td {
	border: 1px solid #ccc;
	padding: 1rem;
	text-align: center;
}

th {
	font-weight: bold;
	background-color: #eee;
}

th:first-child, td:first-child {
	text-align: left;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

img {
	max-height: 100px;
	max-width: 100px;
}

.cancel {
	border: none;
	padding: 1rem 2rem;
	margin-top: 1rem;
	color: #fff;
	background-color: #f44336;
	font-size: 1.2rem;
	cursor: pointer;
	transition: all 0.3s ease;
}

.cancel:hover {
	background-color: #ff4d4d;
}

div {
	background-color: #f5f5f5;
	color: #333;
	font-size: 14px;
	line-height: 1.5;
	margin: 20px 0;
	padding: 20px;
}

h2 {
	color: #666;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 10px;
}

.payment-button {
	display: inline-block;
	padding: 10px 20px;
	border-radius: 5px;
	background-color: yellow;
	color: black;
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
	transition: all 0.3s ease-in-out;
	margin-left: 30px;
}

.payment-button:hover {
	background-color: #0063cc;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}

a {
	text-decoration: none;
	color: black;
}
</style>
<script type="text/javascript">
	function go_pay() {
		document.formm.action = "payment.html";
		document.formm.submit();
	}
</script>
</head>
<body>
	<article>
		<h2 style="margin-left: 30px;">Order/Payment</h2>
		<form name="formm" method="post">
			<table id="cartList">
				<tr>
					<th>상품명</th>
					<th>수량</th>
					<th>가격</th>
					<th>주소</th>
					<th>진행상태</th>

				</tr>
				<c:forEach items="${orderList}" var="orderVO">
					<tr>
						<td><a
							href="NutsServlet?command=product_detail&pseq=${cartVO.pseq}">
								<h3>${orderVO.pname}</h3>
						</a></td>
						<td>${orderVO.quantity}</td>
						<td><fmt:formatNumber
								value="${orderVO.price*orderVO.quantity}" type="currency" /></td>
						<td>${orderVO.address}</td>
						<span style="float: left; margin-left: 30px"> <img
							src="product_images/${orderVO.image}" />
						</span>

						<td>다 왔어요!</td>
					</tr>
				</c:forEach>
				
				<tr>
				<th>총액</th>
					<th colspan="2">총 액</th>
					<th colspan="2"><fmt:formatNumber value="${totalPrice}"
							type="currency" /><br></th>
		
				</tr>
				
			</table>
			<div>
				· 구매 가능 수량이 1개로 제한된 상품은 주문 취소 시, 24시간 내 가상계좌 재주문이 불가합니다. <br>·
				무신사 스토어는 기본적으로 대한민국 내 제주도 및 도서 산간 지역 포함 전 지역, 전 상품 무료배송입니다. <br>·
				해외 배송 상품이나 일부 업체의 경우, 교환/환불 시 반송료가 다를 수 있으며 상품 페이지에 별도 표기되어 있습니다.<br>
				· 2개 이상의 브랜드(업체) 상품을 주문하신 경우, 각 개별 배송됩니다.
			</div>
			<div>
				<h2>사은품</h2>
				· 사은품 적용 조건에 따라 선택할 수 있는 사은품만 표시됩니다. [사은품 상세보기↗] <br>· 사은품은
				'주문서 작성' 페이지에서 직접 선택해야 정상 반영됩니다. <br>· 일반 택배 배송이 아닌 무탠픽업, 화물
				직배송(가구/설치) 등은 사은품 증정이 제외됩니다. <br>· 가상계좌(무통장) 등은 입금 확인 전까지 사은품이
				소진될 수 있습니다. (주문 시가 아닌 입금 시 재고 상황에 따라 사은품 적용) <br>· 상품을 환불할 경우
				함께 받은 사은품까지 모두 반품해야 합니다. (사은품 분실했거나 사용 흔적이 있는 경우에는 환불 불가) <br>·
				사은품이 반납되지 않으면 사은품 원가격만큼 환불 금액에서 차감됩니다. <br>· 사은품은 구매 수량이 아닌 주문
				건을 기준으로 적용합니다. (사은품 증정 상품 2개 이상을 한 번에 주문해도 사은품은 1개만 발송) <br>·
				무신사 매거진 사은품은 매거진 발행호수(vol.)당 1회만 증정됩니다. <br>· 사은품 증정은 한정 수량으로
				재고 소진 시 종료됩니다.
			</div>
			<div>
				<h2>교환/환불</h2>
				택배배송자동회수 택배사CJ대한통운배송비 왕복 5,000원(지역별 추가배송비(편도) : 제주 3,000원 / 제주 외
				도서산간 3,000원)<br> 교환/환불 요청 상품의 수량에 따라서 상이, 구매자 책임 사유일 경우에만 발생<br>

				보내실 곳17161 경기 용인시 처인구 양지면 양지리 920 4층 비케이브 물류<br> 교환 / 환불 접수하기<br>
				교환/환불 시<br> 주의 사항<br> 상품 수령 후 7일 이내 교환/환불을 요청해야 합니다.<br>
				동일 업체일 경우라도 상품별로 반품비용이 상이하게 발생할 수 있습니다.<br> 교환/환불 시 반품비용은
				선결제함으로 동봉하지 마시고, 동봉하여 발송하신 경우 확인 후 반품비 환불 처리됩니다.<br> 고객님의 사유로
				교환 진행 중인 상품이 품절될 경우, 반품비가 발생될 수 있으며 이를 제외한 결제금액이 환불 처리됩니다.<br>
				자동회수 접수 시 영업일 기준 2~3일 내에 택배기사님 연락 후 방문하여 회수 진행됩니다.<br> 자동회수 미지원
				업체 및 직접발송의 경우 수령하신 택배사로 착불(신용)로 반품 접수하여 발송 부탁드리겠습니다.<br> 수령하신
				택배사가 아닌 다른 택배사로 발송하시는 경우(신규 택배 접수 포함) 추가 비용이 발생 할 수 있습니다.<br>
				반품 주소지는 브랜드(업체)마다 다르므로 확인 후 각각 보내셔야 합니다.<br> 상품의 내용이 표시, 광고 내용과
				다르거나 계약 내용이 다를 경우 상품을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일
				내 청약 철회를 할 수 있습니다.<br> 상품을 반환받은 날로부터 영업일 기준 3일 내 지급받은 대금을
				환급합니다.<br> 미성년자가 체결한 계약은 법정대리인이 동의하지 않는 경우 본인 또는 법정대리인이 취소할 수
				있습니다.<br> 도서산간 지역의 경우 결제하신 기본 교환/환불 배송비 외에 편도 기준 최대 8천원(왕복 기준
				최대 16천원)까지 추가 비용이 발생할 수 있습니다. 택배사, 판매업체, 지역별로 도서산간 발생 금액이 상이해 구매
				시점에서는 정확한 금액 안내가 어렵습니다.<br> 교환/환불이 불가능한 경우<br> 반품 요청 기간(수령
				후 7일 이내)이 경과한 경우<br> 상품을 사용(또는 착용, 착화) 혹은 훼손하여 재판매가 어려울 정도로
				상품가치가 현저히 감소한 경우<br> 상품의 택(Tag) 또는 라벨 제거, 분리, 분실, 훼손하거나<br>
				세트 구성품을 누락한 경우<br> 신발 브랜드 박스를 분실하거나 훼손(오염, 테이핑 등)한 경우<br>
				(상품 확인 목적으로 단순 개봉한 경우는 제외)<br> 상품을 설치/장착하거나 전원을 연결한 경우(테크, 가전
				제품 등)<br> 고객의 주문에 따라 개별적으로 생산된 상품인 경우(맞춤 주문 제작 상품 등)<br>

			</div>
			<div>
				<h2>주문자 동의</h2>

				<input type="checkbox" />[필수] 개인정보 수집 및 이용 동의 <br> <input
					type="checkbox" />[필수] 개인정보 제 3자 제공 동의 <br> <input
					type="checkbox" />[필수] 전자결제대행 이용 동의 <br>
			</div>
			<div class="clear"></div>
			<button class="payment-button" onclick="return go_pay()">카카오페이
				결제하기</button>




			<div id="buttons" style="float: right">
				<input type="button" value="메인 페이지로 돌아가기" class="cancel"
					onclick="location.href='NutsServlet?command=main'">
			</div>
		</form>
	</article>

</body>
</html>