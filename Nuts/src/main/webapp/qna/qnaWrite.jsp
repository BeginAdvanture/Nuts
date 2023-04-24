<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
			body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
			margin: 0;
			padding: 0;
		}
		
		article {
			background-color: #fff;
			padding: 20px;
			margin: 20px auto;
			max-width: 800px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
			border-radius: 5px;
		}
		
		h2 {
			color: #444;
			font-size: 32px;
			margin: 0;
			margin-bottom: 10px;
		}
		
		h3 {
			color: #666;
			font-size: 20px;
			margin: 0;
			margin-bottom: 20px;
		}
		
		form {
			display: flex;
			flex-direction: column;
			align-items: center;
		}
		
		fieldset {
			border: none;
			margin-bottom: 20px;
			padding: 0;
			width: 100%;
			max-width: 600px;
			box-sizing: border-box;
			display: flex;
			flex-direction: column;
			align-items: flex-start;
		}
		
		legend {
			font-size: 24px;
			margin-bottom: 10px;
			color: #444;
		}
		
		label {
			font-size: 20px;
			color: #666;
			margin-bottom: 5px;
			display: block;
		}
		
		input[type="text"], textarea {
			font-size: 16px;
			padding: 10px;
			border-radius: 5px;
			border: 1px solid #ddd;
			width: 100%;
			box-sizing: border-box;
			margin-bottom: 10px;
		}
		
		textarea {
			height: 200px;
		}
		
		input[type="submit"], input[type="reset"], input[type="button"] {
			font-size: 16px;
			padding: 10px 20px;
			border-radius: 5px;
			border: none;
			background-color: #1abc9c;
			color: #fff;
			margin-right: 10px;
			cursor: pointer;
			transition: all 0.2s ease;
		}
		
		input[type="submit"]:hover, input[type="reset"]:hover, input[type="button"]:hover {
			background-color: #148f77;
		}
		
		input[type="reset"] {
			background-color: #e74c3c;
		}
		
		input[type="reset"]:hover {
			background-color: #c0392b;
		}
</style>
</head>
<body>
	<article>
		<h2>1:1 고객 게시판</h2>
		<h3>고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>
		<form name="formm" method="post"
			action="NutsServlet?command=qna_write">
			<fieldset>
				<legend>Qna Info</legend>
				<label>Title</label> <input type="text" name="subject" size="77"><br>
				<label>Content</label>
				<textarea rows="8" cols="65" name="content"></textarea>
				<br>
			</fieldset>
			<div class="clear"></div>
			<div id="buttons" style="float: right">
				<input type="submit" value="글쓰기" class="submit"> <input
					type="reset" value="취소" class="cancel"> <input
					type="button" value="쇼핑 계속하기" class="submit"
					onclick="location.href='NutsServlet?command=main'">
			</div>
		</form>
	</article>
</body>
</html>