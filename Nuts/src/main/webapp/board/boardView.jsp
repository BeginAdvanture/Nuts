<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping1.css">
<script type="text/javascript" src="script/board.js"></script>


</head>
<body>

   <div id="wrap" align="center">

      <h1>게시글 상세보기</h1>
      <table>

         <tr>
            <th>작성자</th>
            <td>${board.name}</td>
            <th>이메일</th>
            <td>${board.email}</td>
         </tr>

         <tr>
            <th>작성일</th>
            <td><fmt:formatDate value="${board.writedate}" /></td>
            <th>조회수</th>
            <td>${board.readcount }</td>
         </tr>
         <tr>
            <th>제목</th>
            <td colspan="3">${board.title }</td>
         </tr>
         <tr>
            <th>내용</th>
            <td colspan="3"><pre>${board.content }</pre></td></tr>


         <tr>
   <th>이미지 파일</th>
   <td colspan="3"><img src="upload/${board.image}"></td>
</tr>

      </table>


      <br> <br> <input type="button" class="my-button" value="게시글 수정"
         onclick="open_win('NutsServlet?command=board_check_pass_form&num=${board.num}','update')">
      <input type="button" class="my-button" value="게시글 삭제"
         onclick="open_win('NutsServlet?command=board_check_pass_form&num=${board.num}','delete')">
      <input type="button" class="my-button" value="게시글 리스트"
         onclick="location.href='NutsServlet?command=board_list'"> <input
         type="button" class="my-button" value="게시글 등록"
         onclick="location.href='NutsServlet?command=board_write_form'">
      <input type="button" class="my-button" value="답글 쓰기"
       onclick="location.href='NutsServlet?command=board_reply_form&num=${board.num}&ref=${board.ref}&re_step=${board.re_step}&re_level=${board.re_level}'">






   </div>



</body>
</html>