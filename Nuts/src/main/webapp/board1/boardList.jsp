<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/noti.css" />
<style>

</style>
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
   integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
   crossorigin="anonymous" referrerpolicy="no-referrer" />
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

 <div class="container">
        <section class="box">
            <aside class="box-sidebar">
            <ul>
               <li class="one"><a href="NutsServlet?command=board_page"><i
                     class="fas fa-note-sticky"></i>공지게시판</a></li>
               <li class="two"><a href="NutsServlet?command=ques_page"><i
                     class="fas fa-user"></i>자주 묻는 질문</a></li>
         
            </ul>
            </aside>
            <div class="box-contents">
                <div class="title">
               <h2>공지</h2>
            </div>

            <div class="main-container">
               <div class="faq-container1">
                  <div class="table">
                     <table>

                        <tr>
                           <th>번호</th>
                           <th>제목</th>
                           <th>조회수</th>
                           <th>작성일</th>
                        </tr>

                        <c:forEach var="board" items="${boardList }">
                           <tr>
                              <td>${board.num }</td>
                              <td class="tb-title"><a
                                 href="NutsServlet?command=board_view&num=${board.num }">${board.title }</a></td>
                              <td>${board.readcount }</td>
                              <td><fmt:formatDate value="${board.writedate }"
                                    type="both" dateStyle="short" timeStyle="short" /></td>
                           </tr>

                        </c:forEach>
                     </table>
                  </div>

               </div>



            </div>
            </div>

        </section>
    </div>
</body>
</html>