<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${requestScope.reviewList !=null}">
		<c:forEach var="review" items="${requestScope.reviewList }">
			<tr>
				<td width="150">
					<div>
						${comment.comment_id } <font size="2" color="lightgray">${review.review_date}</font>
					</div>
				</td>

				<td width="550">
					<div class="text_wrapper">
						${review.review_content}
					</div>
				</td>
				<!-- 버튼 -->
				<td width="100">
					<div id="btn" style="text-align:center;">
						<a  href="#">[답변]<</a><br>
						<c:if test="${review.review_id == sessionScope.sessionID }">
							<a href="#">[수정]</a><br>
							<a href="#">[삭제]</a>
						</c:if>
					</div>
				
				</td>
				
			</tr>

		</c:forEach>


	</c:if>
	
	
	
</body>
</html>