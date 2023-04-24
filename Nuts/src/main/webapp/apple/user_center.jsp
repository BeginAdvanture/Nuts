<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/admin.css">
    <style>
    body {
   background-image: url(images/hill1.png), url(images/hill2.png),
      url(images/hill3.png), url(images/hill4.png), url(images/hill5.png),
      url(images/hill6.png), url(images/hill7.png), url(images/hill8.png);
   background-repeat: no-repeat;
   background-size: cover;
   }
    
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="container">
        <section class="box">
            <aside class="box-sidebar">
                <h2>Menu</h2>
               <ul>
               <li class="one"><a href="NutsServlet?command=admin_page"><i
                     class="fas fa-note-sticky"></i>공지</a></li>
               <li class="two"><a href="NutsServlet?command=user_center"><i
                     class="fas fa-user"></i>회원관리</a></li>
                    <li class="two"><a href="NutsServlet?command=admin_product_list"><i
                     class="fas fa-user"></i>상품관리</a></li>  
                       <li class="two"><a href="NutsServlet?command=admin_order_list"><i
                     class="fas fa-user"></i>주문리스트</a></li>  
                      
                      <li class="two"><a href="NutsServlet?command=admin_qna_list"><i
                     class="fas fa-user"></i>상담 게시판</a></li>
                     
               <li class="three"><a href="NutsServlet?command=main"><i
                     class="fa-solid fa-arrow-right-from-bracket"></i>끝내기</a></li>
            </ul>
            </aside>
            <div class="box-contents">
                <div class="title">
               <h2>회원관리</h2>
            </div>

            <div class="main-container">
               <div class="faq-container1">
                  <div class="table">
                     <form name="frm" method="post" action="NutsServlet">
                        <input type="hidden" name="command" value="user_account">
               
                        <table>
               
                           <tr>
                              <td colspan="10" class="Madd"><a
                              href="NutsServlet?command=insert_member_form">회원 등록</a></td>
                           </tr>
               
                           <tr>
                              <th>아이디</th>
                              <th>비밀번호</th>
                              <th>이름</th>
                              <th>이메일</th>
                              <th>우편번호</th>
                              <th>주소</th>
                              <th>핸드폰</th>
                              <th>가입날짜</th>
                              <th>관리</th>
                           </tr>
               
                           <c:forEach var="member" items="${member }">
                              <tr>
                                 <td>${member.id }</td>
                                 <td>${member.pwd }</td>
                                 <td>${member.name }</td>
                                 <td>${member.email }</td>
                                 <td>${member.zipNum}</td>
                                 <td>${member.address }</td>
                                 <td>${member.phone }</td>
                                 <td><fmt:formatDate value="${member.indate }" type="both"
                                       dateStyle="short" timeStyle="short" /></td>
                                 
                                 <td>
                                 <input type="button" value="수정" onclick="location.href='NutsServlet?command=user_update&id=${member.id}'">
                                 <input type="button" value="삭제" onclick="location.href='NutsServlet?command=user_delete&id=${member.id}'">
                                 </td>
               
                              </tr>
                           </c:forEach>
                        </table>
                     </form>
                  </div>

               </div>



            </div>
            </div>

        </section>
    </div>
</body>
</html>