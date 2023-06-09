<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping1.css">
<script type="text/javascript" src="script/board.js"></script>
<script>
function go_fbw()
{
var theForm = document.frm
theForm.action = "NutsServlet?command=board_write";
theForm.submit();
}

</script>
</head>
<body>
   <div id="wrap" align="center">
   <h1>답변글 등록</h1>
   <form name="frm" method="post" action="NutsServlet" enctype="multipart/form-data">


   <table>
      <tr>
            <th>작성자</th>
            <td><input type="text" name="name"> * 필수</td>
      </tr>
      <tr>
               <th>비밀번호</th>
               <td><input type="password" name="pass"> 
               * 필수 (게시물 수정   삭제시 필요합니다.)</td>
      </tr>
      <tr>
               <th>이메일</th>
               <td><input type="text" name="email"></td>
      </tr>
      <tr>
               <th>제목</th>
               <td><input type="text" size="70" name="title"> 
               * 필수</td>
      </tr>
      
      <tr>
               <th>내용</th>
               <td><textarea cols="70" rows="15" name="content">
               </textarea></td>
      </tr>
      
      <tr>
         <th>이미지 파일</th>
         <td><input type="file" name="image"></td>
   
      </tr>
      
      
   
      
   </table>
   <br>
   <br> 
   <!-- 업로드 버튼 클릭 시 form 데이터를 서버로 전송하도록 설정 -->
   <input type="submit" class="my-button" value="답변 등록" onclick="return go_fbw()"> 
   <input type="reset" class="my-button"   value="다시 작성"> 
   <input type="button" class="my-button" value="목록" onclick="location.href='NutsServlet?command=board_list'">
   </form>
   </div>
</body>
</html>