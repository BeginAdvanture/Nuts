<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/view.css">
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

   <div class="box-contents">
      <div class="title">
         <h2>게시글 상세보기</h2>
      </div>

      <div class="main-container">
         <div class="faq-container1">
            <div class="table">
               <c:forEach var="board" items="${bVo }"></c:forEach>
               <table>
                  <tr>
                     <th>제목</th>
                     <td>${board.title}</td>
                     <th>조회수</th>
                     <td>${board.readcount}</td>
                  </tr>

                  <tr>
                     <th>카테고리</th>
                     <td>${board.category}</td>
                     <th>작성일</th>
                     <td><fmt:formatDate value="${board.writedate }" type="both"
                           dateStyle="short" timeStyle="short" /></td>
                  </tr>
                  <tr>
                     <th>작성자</th>
                     <td colspan="3" class="one">${board.name}</td>
                  </tr>

                  <tr>
                     <th>내용</th>
                     <td colspan="4"  class="two"><pre>${board.content}</pre></td>
                  </tr>
               </table>
               <br>
               <div class="buttons">
                  <input type="button" value="게시글 리스트"
                     onclick="location.href='NutsServlet?command=board_page'">
               </div>
            </div>
         </div>



      </div>
   </div>
</body>
</html>