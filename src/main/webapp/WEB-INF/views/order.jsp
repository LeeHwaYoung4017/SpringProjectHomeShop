<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function goPopup(){
      var url = "jusoPopup";
      var title = "pop";
      var option = "width=570,height=420, scrollbars=yes, resizable=yes";
      window.open(url,title,option);
   }
   
   function payMethod() {
      //var doc = $("input:radio").val();
      var div =$("input[name='pay']:checked").val();
      var check = 0;
      if (div=="cardPay") {
        // alert("카드옴");
         var ho = document.createElement("div")
         $("#here").empty();
         ho.innerHTML="<td><h2>카드 결제 서비스 준비중 입니다.</h2></td>";
         document.getElementById("sb").innerHTML="카드 결제";
         var here = document.getElementById("here");
          here.appendChild(ho); 
      }else if (div=="phonePay") {
         //alert("핸드폰옴");
         var ho = document.createElement("div")
         
         $("#here").empty();
         ho.innerHTML="<td><h2>핸드폰 결제 서비스 준비중 입니다.</h2></td>";
         document.getElementById("sb").innerHTML="핸드폰 결제";
         var here = document.getElementById("here");
           here.appendChild(ho); 
      }else if (div=="directPay") {
         var ho = document.createElement("div")
         $("#here").empty();
         ho.innerHTML=
            "<td>입금자명 : <input type='text' value='${name}' name='payName' id='payName'/>"
            +"<br/>입금은행 : <select name='bank' id='bank'>"
            +"<option>::선택해 주세요::</option>"
            +"<option value='nhBank'>농협은행 : 000-0000-0000-00 심운보</option>"
            +"<option value='wooriBank'>우리은행 : 000-0000-0000-00 심운보</option>"
            +"</select></td>";
                        
         document.getElementById("sb").innerHTML="무통장 결제";
            
         var here = document.getElementById("here");
           here.appendChild(ho);
           var check = 1;
      }
      //alert(check);
   }
   function checkPay() {
      var name=document.getElementById("name").value;
      var phone=document.getElementById("phone").value;
      var addr=document.getElementById("addr").value;
      var email=document.getElementById("email").value;
      if(!name || name.trim().length == 0){
		   alert("받으시는 분 이름을 입력하세요.");
		   return false;
	   }else if(!phone || phone.trim().length == 0){
		   alert("핸드폰 번호를 입력하세요.");
		   return false; 
	   }else if(!addr || addr.trim().length == 0){
		   alert("주소를 입력하세요.");
		   return false; 
	   }else if(!email || email.trim().length == 0){
		   alert("이메일을 입력하세요.");
		   return false; 
	   }
    
    
      document.getElementById("orderForm").submit();
   }
   function resize(img){

	    // 원본 이미지 사이즈 저장
	    var width = img.width;
	    var height = img.height;

	    var newW = 80;
	    var newH = 80;
	    
	    var ratio = newW/width;
	    var ratio2 = newH/height;
	 

	    // 가로, 세로 최대 사이즈 설정
	    var maxWidth = width * ratio;   
	    var maxHeight = height * ratio; 
	    
	    var maxWidth2 = width * ratio2;   
	    var maxHeight2 = height * ratio2; 
	    

	  //가로가 최대사이즈보다 작을경우
	  if(width <= newW){
	    if(height <= newH ){
	       
	       resizeWidth = maxWidth;
	        resizeHeight = maxHeight;
	       
	    } else {
	       resizeWidth = maxWidth2;
	       resizeHeight = maxHeight2;
	    }
	  } else {
	     if(height <= newH ){
	          
	          resizeWidth = maxWidth;
	           resizeHeight = maxHeight;
	          
	       } else {
	          if(maxHeight < newH){
	             resizeWidth = maxWidth;
	           resizeHeight = maxHeight;
	       }else {
	          resizeWidth = maxWidth2;
	          resizeHeight = maxHeight2;
	       }
	       }
	       
	  }
	    // 리사이즈한 크기로 이미지 크기 다시 지정
	    img.width = resizeWidth;
	    img.height = resizeHeight;
	 }
</script>
<style type="text/css">
table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 65%;
  margin: auto;
  margin-bottom: 25px;
}
input[type=button]{
width: 100px;
}
td, th {
    border: 1px solid gray;
     padding: 8px;
}
.orderTitle{
 text-align: center;
 
}
.payPrice{
   color: #f76560;

}
input[type=text] , input[type=password]{
  width: 50%;
  padding: 6px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  border-bottom: 2px solid gray;
}
strong {
    font-weight: bold;
}

</style>
</head>
<body>
<jsp:include page="item.jsp" flush="true"/>
         <div id="contents">
            <div class="sub_contents_inner">
               <div class="contents_inner">
 				<form action="orderOK" method="post" name="orderForm" id="orderForm">
                  <h2 class="Title" style="font-family: font-family: 'Noto Sans JP', sans-serif;">ORDER</h2>
	                  <table width="700" cellpadding="0" cellspacing="8">
	                  	<caption>주문내역</caption>
	                  	<tr>
							<td width="400">상품</td>
							<td width="100">판매가</td>
							<td width="50">수량</td>
							<td width="100">배송비</td>
							<td width="150">TOTAL</td>
						</tr>
						<c:forEach var="vo" items="${orderList}">
								<tr align="left">
									<td><img onload="resize(this)" src="${pageContext.request.contextPath }/resources/goodsupload/goodsupload_${vo.category}/${vo.id_number}">
										${vo.item_name}(${vo.color},${vo.size},${vo.ea})</td>
									<td>${vo.price}</td>
									<td>${vo.ea}</td>
									<td>2500</td>
									<td><c:set var="total" value="${(vo.price)*(vo.ea)+2500}"/>${total}</td>
								</tr>
					   </c:forEach>
	                  </table>
                  
                  
                     <table width="700" cellpadding="0" cellspacing="8">
                        <caption>배송정보 </caption>
                           <tr>                                   
                              <td align="center">받으시는 분 :</td>
                              <td><input type="text" value="${name}" name="name" id="name"/></td>
                           </tr>
                           <tr>
                              <td align="center">주소 :</td>
                              <td><button type="button" onclick="goPopup()"><img src="${pageContext.request.contextPath }/resources/images/addrimg1.png"></button>
                              <br/><input type="text" name="addr" id="addr" value="${addr}" style="width: 600px"></td>
                           </tr>                  
                           <tr>
                              <td align="center">휴대 전화 :</td>
                              <td><input type="text" name="phone" id="phone" style="width: 600px" value="${phone}"></td>
                           </tr>
                           <tr>
                              <td  align="center">이메일 :</td>
                              <td><input type="text" name="email" id="email" style="width: 600px" value="${email}"></td>
                           </tr>
                     </table>
                     <table border="1">
                        <caption>결제 예정 금액</caption>
                           <tr>
                              <td scope="row"><strong>총 주문 금액</strong></td>
                              <td><c:out value="${total}"/></td>
                           </tr>
                           <tr>
                              <td scope="row"><strong>총 결제 예상 금액</strong></td>
                              <td class="payPrice"><c:out value="${total}"/></td><!-- 총 결제 금액 가져오기 -->
                           </tr>
                        </table>
                        <!-- 결제 수단 시작 -->
                       
                        <table>   
                           <caption>결제 수단</caption>
                              <tr>
                                 <td align="center">
                                    <div onchange="payMethod()">
                                       <input type="radio" id="cardPay" name="pay" value="cardPay">
                                          <label for="cardPay">카드결제</label> 
                                       <input type="radio" id="phonePay" name="pay" value="phonePay">
                                          <label for="phonePay">핸드폰 결제</label `> 
                                       <input type="radio" id="directPay" name="pay" value="directPay">
                                          <label for="directPay">무통장 입금</label>
                                    </div> 
                                 </td> 
                              </tr>
                              <tr id="here" height="200px">
                                <!-- 동적 페이지 띄우는 곳 -->
                                
                              </tr>
               <!-- 총 결제 금액 가져오기 --><tr><td><span id="sb"></span> 총 결제 금액 : <span class="payPrice"><c:out value="${total}"/></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="button" value="결제하기" id="checkPayBtn" onclick="checkPay()"/></td></tr>
                        </table><!-- 결제 수단 끝 -->
                       </form>
               </div>
            </div>
         </div>

</body>
</html>