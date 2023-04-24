<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	/* 전체 영역 */
body {
  font-family: 'Noto Sans KR', sans-serif;
  margin: 0;
  padding: 0;
  background-color: #f5f5f5;
}

/* 제목 스타일 */
h1 {
  font-size: 2em;
  margin-bottom: 1em;
  color: #333;
}

/* 검색바 스타일 */
table:first-of-type td {
  padding: 0.5em;
  border-radius: 5px;
  background-color: #fff;
  box-shadow: 0 1px 3px rgba(0,0,0,0.3);
}

/* 주문 리스트 테이블 스타일 */
table#orderList {
  margin-top: 2em;
  border-collapse: collapse;
  width: 100%;
  font-size: 0.9em;
  background-color: #fff;
  box-shadow: 0 1px 3px rgba(0,0,0,0.3);
}

/* 주문 리스트 테이블의 th, td 스타일 */
table#orderList th, table#orderList td {
  padding: 0.5em;
  text-align: center;
  border: 1px solid #ddd;
}

/* 주문 처리 여부에 따른 스타일 */
span.color-blue {
  font-weight: bold;
  color: blue;
}

span.color-red {
  font-weight: bold;
  color: red;
}

/* 주문 처리 버튼 스타일 */
input.btn {
  margin-top: 2em;
  margin-bottom: 2em;
  padding: 1em;
  background-color: #4CAF50;
  color: #fff;
  border: none;
  border-radius: 5px;
  font-size: 1.1em;
  cursor: pointer;
  box-shadow: 0 1px 3px rgba(0,0,0,0.3);
}

/* 주문 처리 버튼 호버 시 스타일 */
input.btn:hover {
  background-color: #3e8e41;
}
	

</style>
<script type="text/javascript" src="admin/product/product.js"></script>
<script type="text/javascript">
	function go_order_save() {
		var count = 0;
		if (document.frm.result.length == undefined) {
			if (document.frm.result.checked == true) {
				count++;
			}
		} else {
			for (var i = 0; i < document.frm.result.length; i++) {
				if (document.frm.result[i].checked == true) {
					count++;
				}
			}
		}
		if (count == 0) {
			alert("주문처리할 항목을 선택해 주세요.");
		} else {
			document.frm.action = "NutsServlet?command=admin_order_save";
			document.frm.submit();
		}
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<article>
		<h1>주문리스트</h1>
		<form name="frm" method="post">
			<table style="float: right;">
				<tr>
					<td>상품 이름 <input type="text" name="key"> <input
						class="btn" type="button" value="검색" onclick="go_search()">
					</td>
				</tr>
			</table>
			<br>
			<table id="orderList">
				<tr>
					<th>주문번호(처리여부)</th>
					<th>주문자</th>
					<th>상품명</th>
					<th>수량</th>
					<th>우편번호</th>
					<th>배송지</th>
					<th>전화</th>
					<th>주문일</th>
				</tr>
				<c:forEach items="${orderList}" var="orderVO">
					<tr>
						<td><c:choose>
								<c:when test='${orderVO.result=="1"}'>
									<span style="font-weight: bold; color: blue">${orderVO.odseq}</span>
 (<input type="checkbox" name="result" value="${orderVO.odseq}"> 미처리)
 </c:when>
								<c:otherwise>
									<span style="font-weight: bold; color: red">${orderVO.odseq}</span>
 (<input type="checkbox" checked="checked" disabled="disabled">처리완료)
 </c:otherwise>
							</c:choose></td>
						<td>${orderVO.mname}</td>
						<td>${orderVO.pname}</td>
						<td>${orderVO.quantity}</td>
						<td>${orderVO.zipNum}</td>
						<td>${orderVO.address}</td>
						<td>${orderVO.phone}</td>
						<td><fmt:formatDate value="${orderVO.indate}" /></td>
					</tr>
				</c:forEach>
			</table>
			<input type="button" class="btn" style="width: 200px"
				value="주문처리(입금확인)" onClick="go_order_save()">
		</form>
	</article>
</body>
</html>