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
	  body {
        background-color: #f2f2f2;
        font-family: Arial, sans-serif;
    }
    
    h1 {
        text-align: center;
    }
    
    /* 버튼 스타일링 */
    .btn {
        background-color: #4CAF50; /* 버튼 색상 */
        border: none;
        color: white;
        padding: 8px 16px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 3px; /* 버튼 모서리 둥글게 */
    }
    
    .btn:hover {
        background-color: #3e8e41; /* 버튼 마우스 오버 색상 */
    }
    
    /* 테이블 스타일링 */
    table {
        border-collapse: collapse;
        width: 100%;
    }
    
    th, td {
        text-align: center;
        padding: 8px;
    }
    
    th {
        background-color: #4CAF50; /* 테이블 헤더 배경 색상 */
        color: white;
    }
    
    tr:nth-child(even) {
        background-color: #f2f2f2; /* 짝수 행 배경 색상 */
    }
    
    tr:hover {
        background-color: #ddd; /* 마우스 오버 행 배경 색상 */
    }
    
    /* 결과 없음 메시지 스타일링 */
    .no-result {
        text-align: center;
        font-weight: bold;
    }


</style>
</head>
<body>
	<h1>상품리스트</h1>
	<form name="frm" method="post">
		<table>
			<tr>
				<td width="642">상품명 <!-- <input class="btn" type="button"
					name="btn_search" value="검색" onClick="go_search()"> <input
					class="btn" type="button" name="btn_total" value="전체보기 "
					onClick="go_total()">  --><input class="btn" type="button"
					name="btn_write" value="상품등록" onClick="go_wrt()">
				</td>
			</tr>
		</table>
		<table id="productList">
			<tr>
				<th>번호</th>
				<th>상품명</th>
				<th>원가</th>
				<th>판매가</th>
				<th>등록일</th>
				<th>사용유무</th>
			</tr>
			<c:choose>
				<c:when test="${productListSize<=0}">
					<tr>
						<td width="100%" colspan="7" align="center" height="23">등록된
							상품이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${productList}" var="productVO">
						<tr>
							<td height="23" align="center">${productVO.pseq}</td>
							<td
								style="text-align: left; padding-left: 50px; padding-right: 0px;">
								<a href="#" onClick="go_detail('${tpage}', '${productVO.pseq}')">
									${productVO.name} </a>
							</td>
							<td><fmt:formatNumber value="${productVO.price}" /></td>
							<td><h2>${ productVO.content1}</h2></td>
							<td><h2>${ productVO.content2}</h2></td>
							<td><h2>${ productVO.content3}</h2></td>
							<td><fmt:formatDate value="${productVO.indate}" /></td>
							<td><c:choose>
									<c:when test='${productVO.useyn=="1"}'>미사용</c:when>
									<c:otherwise>사용</c:otherwise>
								</c:choose></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="6" style="text-align: center;">${paging}</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
	</form>
	</article>
</body>
</html>