<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script type="text/javascript" src="script/User.js"></script>
</head>
<body>


   <div class="container">
      <h1>회원 정보수정</h1>
   
   <form name="frm" method="post" action="NutsServlet">
      <input type="hidden" name="command" value="user_updateAction">
       <input type="hidden" name="id" value="${member.id }">
         
         <div class="input-group">
            <input type="text" required name="id" value="${member.id }">
            <label for="">아이디</label>
         </div>
         
         <div class="input-group">
            <input type="text" required name="pwd" value="${member.pwd }">
            <label for="">비밀번호</label>
         </div>
         
         <div class="input-group">
            <input type="text" required name="name" value="${member.name }">
            <label for="">이름</label>
         </div>
         
         <div class="input-group">
            <input type="text" required name="email" value="${member.email }">
            <label for="">이메일</label>
         </div>
         
         <div class="input-group">
            <input type="text" required name="zip_num" value="${member.zip_num }">
            <label for="">우편번호</label>
         </div>
         
         <div class="input-group">
            <input type="text" required name="address" value="${member.address }">
            <label for="">주소</label>
         </div>
         
         <div class="input-group">
            <input type="text" required name="phone" value="${member.phone }">
            <label for="">핸드폰</label>
         </div>
         
      <br> <br> <input type="submit" value="수정"> 
         <input type="reset" value="다시 작성">
      <input type="button" value="목록"  onclick="location.href='NutsServlet?command=user_center'">

   </form>
   </div>
</body>
</html>