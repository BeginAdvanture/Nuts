<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		/* header */
		header {
			background-color: #f1f1f1;
			padding: 10px;
			height: 100px;
			display: flex;
			align-items: center;
		}
css
Copy code
	#logo img:first-child {
		float: left;
	}

	#logo img:last-child {
		margin-left: 10px;
	}

	/* form */
	form {
		margin: auto;
		width: 50%;
		padding: 20px;
		border: 1px solid #ddd;
		background-color: #f9f9f9;
	}

	table {
		margin: auto;
		border-collapse: collapse;
		border-spacing: 0;
		width: 100%;
	}

	th,
	td {
		padding: 8px;
		text-align: left;
		border-bottom: 1px solid #ddd;
	}

	/* button */
	.btn {
		background-color: #4CAF50;
		color: white;
		padding: 12px 20px;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		float: right;
	}

	.btn:hover {
		background-color: #45a049;
	}

	/* error message */
	h4 {
		color: red;
		text-align: center;
	}
</style>
<script type="text/javascript">
	function worker_check() {
		if (document.frm.workerId.value == "") {
			alert("아이디를 입력하세요.");
			return false;
		} else if (document.frm.workerPwd.value == "") {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div id="wrap">
		<header>
			
		</header>
		<article>
			<div id="loginform">
				<form name="frm" method="post" action="NutsServlet?command=admin_login">
					<table>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="workerId" size="10" value="admin"></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="workerPwd" size="10" value="admin"></td>
						</tr>
						<tr>
							<td colspan="2">
								<input class="btn" type="submit" value="업무 로그인" onclick="return worker_check()">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<h4>${message}</h4>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</article>
	</div>
</body>
</html> 