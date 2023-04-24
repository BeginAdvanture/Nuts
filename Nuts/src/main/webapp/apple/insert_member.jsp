<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/insert.css">
    <style>
    body {
   background-image: url(images/hill1.png), url(images/hill2.png),
      url(images/hill3.png), url(images/hill4.png), url(images/hill5.png),
      url(images/hill6.png), url(images/hill7.png), url(images/hill8.png);
   background-repeat: no-repeat;
   background-size: cover;
   }
    
    </style>
</head>
<body>

   <div class="us_container">
   <h1>회원 등록</h1>
      <form action="NutsServlet" method="post" name="frm">
         <input type="hidden" name="command" value="insert_member">
         
         <div class="input-group">
                <input type="text" required name="id">
                <label for="">아이디</label>
            </div>
            
            <div class="input-group">
                <input type="text" required name="pwd">
                <label for="">비밀번호</label>
            </div>
            
            <div class="input-group">
                <input type="text" required name="name">
                <label for="">이름</label>
            </div>
            
            <div class="input-group">
                <input type="text" required name="email">
                <label for="">이메일</label>
            </div>
            
            <div class="input-group">
                <input type="text" required name="zip_num">
                <label for="">우편번호</label>
            </div>
            
            <div class="input-group">
                <input type="text" required name="address">
                <label for="">집주소</label>
            </div>
            
            <div class="input-group">
                <input type="text" required name="phone">
                <label for="">핸드폰</label>
            </div>
         
      <br>
         <br>
         <input type="submit" value="등록">
         <input type="reset" value="다시 작성">
         <input type="button" value="목록"  onclick="location.href='NutsServlet?command=user_center'">
      </form>
   </div>
   
</body>
</html>