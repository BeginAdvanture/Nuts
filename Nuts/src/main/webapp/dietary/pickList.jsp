<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="member/member.js"></script>
<script type="text/javascript" src="mypage/mypage.js"></script>
<link rel="stylesheet" href="css/shopping.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <article>
      <h1>Item</h1>
      <div id="itemdetail">
         <form method="post" name="formm">
            <fieldset>
               <legend> Item detail Info</legend>
               <a
                  href="NutsServlet?command=product_detail&pseq=${dietaryVO.pseq}">
                  <span style="float: left;"> <img
                     src="product_images/${dietaryVO.image}" />
               </span>
                  <h2>${productVO.name}</h2>
               </a> <label> 가 격 : </label>
               <p>${productVO.price} 원</p>
               <label> 수 량 : </label> <input type="text" name="quantity" size="2"
                  value="1"><br> <input type="hidden" name="pseq"
                  value="${dietaryVO.pseq}"><br>
                  <h2>먹는사람: ${dietaryVO.content1}</h2>
                  <h2>용량: ${dietaryVO.content2}</h2>
                  <h2>제조사: ${dietaryVO.content3}</h2>
            </fieldset>
            
            
            
            <div class="clear"></div>
            <div id="buttons">
               <input type="button" value="장바구니에 담기" class="submit" onclick="go_cart()"> 
               <input type="button" value="즉시 구매" class="submit" onclick="go_order()"> 
               <input type="button" value="취소" class="cancel" onclick="history.go(-1)">
            </div>
            
            
         </form>
      </div>
   </article>
</body>
</html>