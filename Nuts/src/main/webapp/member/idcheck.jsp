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
<script type="text/javascript">
	function idok(id) {
		opener.formm.id.value = "${id}";
		opener.formm.reid.value = "${id}";
		self.close();
	}
</script>
</head>
<body>
	<div id="wrap">
		<h1>ID 중복확인</h1>
		<form method=post name=formm style="margin-right: 0"
			action="NutsServlet?command=id_check_form">
			User ID <input type=text name="id" value=""> <input
				type=submit value="검색" class="submit"><br>
			<div style="margin-top: 20px">
				<c:if test="${message == 1}">
					<script type="text/javascript">
						opener.document.formm.id.value = "";
					</script>
 ${id}는 이미 사용중인 아이디입니다.
 </c:if>
				<c:if test="${message==-1}">
 ${id}는 사용 가능한 ID입니다.
 <input type="button" value="사용" class="cancel" onclick="idok()">
				</c:if>
			</div>
		</form>
	</div>
</body>
</html>