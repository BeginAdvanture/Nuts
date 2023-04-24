<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/ques.css">
    <style>
    body {
   background-image: url(images/hill1.png), url(images/hill2.png),
      url(images/hill3.png), url(images/hill4.png), url(images/hill5.png),
      url(images/hill6.png), url(images/hill7.png), url(images/hill8.png);
   background-repeat: no-repeat;
   background-size: cover;
   background-attachment: fixed;
   }
    
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
               <h2>자주 묻는 질문</h2>
            </div>

            <div class="main-container">
               <div class="faq-container1">
                  <div class="accordion">
                     <input type="checkbox" id="answer1"> 
                     <label for="answer1">영양제는 언제 먹으면 좋은가요?<em></em>
                     </label>
                     <div>
                        <p>
                           <b>비타민C</b><br> 아침이나 점심 식사 직후에 드시는 것이 좋아요.<br><br>
                        
                           <b>루테인</b> <br> 아침 식사 후에 드시는 것이 좋아요.<br><br>
                        
                           <b>오메가3</b> <br> 점심이나 저녁 식사 후에 드시는 것이 좋아요.<br><br>
                        
                           <b>밀크씨슬</b> <br> 점심이나 저녁 식사 후에 드시는 것이 좋아요.<br><br>
                        
                           <b>마그네슘</b> <br> 저녁 식사 후에 드시는 것이 좋아요.<br><br>
                        
                           <b>유산균</b> <br> 아침 공복에 드시는 것이 좋아요.<br><br>
                        
                           <b>종합비타민</b> <br> 편한 시간에 드셔도 되지만 식후에 드시는 것이 좋아요.<br><br>
                        </p>
            
                     </div>
            
                     <input type="checkbox" id="answer2"> 
                     <label for="answer2">다른 영양제를 함께 먹어도 될까요?<em></em></label>
                     <div>
                        <p><b>정확한 상담을 위해서는 드시고 계신 타사 영양제의 성분을 알기 위해 품명을 알아야 해요.<br>
                       품명과 함께 상담원에게 문의하시면 빠르고 정확하게 답변을 드릴게요.</b></p>
                     </div>
            
                     <input type="checkbox" id="answer3"> 
                     <label for="answer3">제품을 교환/반품하고 싶어요<em></em></label>
                     <div>
                        <p><b>교환 및 반품의 경우 카카오톡 필리 상담원 채팅을 통해 접수가 가능하며 아래의 교환 및 반품 규정에 따라 진행돼요.</b><br>
                       (필요 시 제품의 상태 이미지 첨부 필요)<br><br>
                       
                       <b>수령한 제품에 문제가 있는 경우</b><br>
                       제품이 표시 및 광고된 내용과 다르거나 제품 자체에 하자가 있는 경우에는 재배송 또는 환불 처리를 해드려요.<br>
                       제품을 받으시고 제품의 문제를 확인 가능한 사진을 첨부해서 카카오톡 필리 상담원에게 전송 부탁드려요.<br>
                       제품에 문제가 있는 것으로 확인될 경우 모든 배송비는 필리가 부담해요.<br><br>
                       
                       <b>고객님의 변심 또는 주문 오류가 있는 경우</b><br>
                       제품의 상태에 문제가 없는 경우에는 제품을 받으신 날부터 7일 이내에 교환 및 반품 신청이 가능해요.<br>
                       단순 변심에 의한 교환 및 반품을 요청하신 경우 제품 발송을 위한 배송비와 반품을 위한 배송비가 부담돼요.<br>
                       제품에 따라 도서/산간지역의 경우 배송비가 추가될 수 있어요.<br><br>
                       
                       <b>교환 및 반품 불가 안내</b><br>
                       아래와 같은 사항에는 교환 및 반품이 어려울 수 있으니 양해 부탁드려요.<br>
                       - 고객님의 책임으로 제품이 훼손된 경우 (제품 박스의 스티커를 제거한 경우 포함)<br>
                       - 고객님의 사용으로 제품의 가치가 현저하게 감소한 경우</p>
                     </div>
            
                     <input type="checkbox" id="answer4">
                      <label for="answer4">결제 취소는 어떻게 하나요?<em></em></label>
                     <div>
                        <p>
                           <b>주문 상태가 배송 전으로 표시되는 경우</b><br> <b>-> 결제일 당일 12시 이전</b><br>
                           <br> 홈페이지 -> 마이페이지에서 주문 취소가 가능합니다.
                        </p>
                     </div>
            
                  </div>

               </div>
            </div>
            </div>

        </section>
    </div>
</body>
</html>