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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function resize(img){

    // 원본 이미지 사이즈 저장
    var width = img.width;
    var height = img.height;

    var newW = 100;
    var newH = 100;
    
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
 
 function allCheck(bool){
    $("input[name=chBox]").each(function(){
         $(this).prop("checked", bool);
   })
 }
 
 var orderRequest = new XMLHttpRequest();
 function orderSelect(){
    var ch = $("input[name=chBox]:checked");
    if(ch.length==0){
      alert("상품을 선택해 주세요.");
    }else{
      $("input[name=chBox]:checked").each(function() { 
         var test = $(this).val();
         var color = document.getElementById(test+"_color").value;
         var id_number = document.getElementById(test+"_id_number").value;
         var category = document.getElementById(test+"_category").value;
         var item_name = document.getElementById(test+"_item_name").value;
         var size = document.getElementById(test+"_size").value;
         var price = document.getElementById(test+"_price").value;
         var ea = document.getElementById(test+"_ea").value;
         var idx = document.getElementById(test+"_idx").value;
         
         var url="./order?color=" + encodeURIComponent(color)
         +"&size=" + encodeURIComponent(size) 
         +"&ea=" + encodeURIComponent(ea)
         +"&idx=" + encodeURIComponent(idx)
         +"&price=" + encodeURIComponent(price)
         +"&category="+ encodeURIComponent(category)
         +"&id_number="+ encodeURIComponent(id_number)
         +"&item_name="+ encodeURIComponent(item_name);
         orderRequest.open("POST",url ,true);
         orderRequest.send(null);
      });
      orderRequest.onreadystatechange = orderby;
    }   
 }
 
 function orderby(){
    if(orderRequest.readyState == 4 && orderRequest.status == 200) {
       location.href="orderBuy";
    }
 }
 
/* 전체상품 구매 */
 var orderAllRequest = new XMLHttpRequest();
 function allSelect(){
    var ch = $("input[name=chBox]");
    if(ch.length==0){
      alert("카트가 비었슴둥.");
    }else{
       $("input[name=chBox]").each(function() { 
            var test = $(this).val();
            var color = document.getElementById(test+"_color").value;
            var id_number = document.getElementById(test+"_id_number").value;
            var category = document.getElementById(test+"_category").value;
            var item_name = document.getElementById(test+"_item_name").value;
            var size = document.getElementById(test+"_size").value;
            var price = document.getElementById(test+"_price").value;
            var ea = document.getElementById(test+"_ea").value;
            var idx = document.getElementById(test+"_idx").value;
            
            var url="./order?color=" + encodeURIComponent(color)
            +"&size=" + encodeURIComponent(size) 
            +"&ea=" + encodeURIComponent(ea)
            +"&idx=" + encodeURIComponent(idx)
            +"&price=" + encodeURIComponent(price)
            +"&category="+ encodeURIComponent(category)
            +"&id_number="+ encodeURIComponent(id_number)
            +"&item_name="+ encodeURIComponent(item_name);
            orderAllRequest.open("POST",url ,true);
            orderAllRequest.send(null);
         });
          orderAllRequest.onreadystatechange = orderAll;
    }
 }

 function orderAll(){
    if(orderAllRequest.readyState == 4 && orderAllRequest.status == 200) {
       location.href="orderBuy";
    }
 }
    
 
</script>
<style type="text/css">
.button {
  background-color: black; /* Green */
  border: none;
  color: white;
  padding: 6px 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.btn1 {
  background-color: black;
  color: white;
  border: 2px solid #555555;
}
.btn {
  background-color: white;
  color: black;
  border: 2px solid #555555;
}
.shoppingList{margin-top: 10%;}
.info{font-size: 18px;}
#total{font-size: 24px; font-style: inherit; margin-right: 50px;}
.my_font{font-size: 12px;}
</style>
</head>
<body>
<jsp:include page="item.jsp"/>
<!-- 가운대 틀 -->
      <div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner">
               <!-- Center TOP -->
               <div id="hotItem">
                   <h2 class="Title" style="font-family: font-family: 'Noto Sans JP', sans-serif;">장바구니</h2>
                     
                     <div class="shoppingList">
                        <hr>   
                        <!-- 장바구니 목록 불러오기 -->
                        <table style="width: 1200px">
                           <tr>
                              <th width="50"><input type="checkbox" id="chAll" onclick="allCheck(this.checked)"></th>
                              <th colspan="2" width="500"><p class="my_font">상품<p></th>
                              <th width="150"><p class="my_font">가격</p></th>
                              <th width="100"><p class="my_font">수량</p></th>
                              <th width="150"><p class="my_font">가격*수량</p></th>
                           </tr>
                        <c:set var="i" value="${0}"/>
                        <c:if test="${cartList.size() != 0}">   
                           <c:forEach var="vo" items="${cartList}">
                                 <tr><td colspan="5"><c:set var="i" value="${i+1}"/></td></tr>
                                    
                                    <tr>
                                        <td align="center">
                                           <input type="checkbox" name="chBox" id="${i}_ch" value="${i}">
                                        </td>
                                        
                                       <td align="center">
                                          <img onload="resize(this)" src="${pageContext.request.contextPath }/resources/goodsupload/goodsupload_${vo.category}/${vo.id_number}">
                                       </td>
                                       
                                       <td align="left">   
                                         <p class="my_font">${vo.item_name}(${vo.color}) / ${vo.size}</p>
                                          <input type="hidden" value="${vo.category}" id="${i}_category">
                                          <input type="hidden" value="${vo.id_number}" id="${i}_id_number">
                                          <input type="hidden" value="${vo.item_name}" id="${i}_item_name">
                                          <input type="hidden" value="${vo.color}" id="${i}_color">
                                          <input type="hidden" value="${vo.size}" id="${i}_size">
                                          <input type="hidden" value="${vo.idx}" id="${i}_idx">
                                       </td>
                                       
                                       <td align="center"><p class="my_font">${vo.price}</p>
                                          <input type="hidden" value="${vo.price}" id="${i}_price">
                                       </td>
                                       
                                       <td align="center"><p class="my_font">${vo.ea}</p><input type="hidden" value="${vo.ea}" id="${i}_ea"></td>
                                       
                                       <td align="center"><c:set var="price" value="${(vo.price*vo.ea)}"/><p class="my_font">${price}</p>
                                       <c:set var="total" value="${total+price}"/></td>
                                       <td align="center"><input type="button" value="삭제" onclick="location.href='removeItem?idx=${i}'"></td>
                                    </tr>
                              </c:forEach>
                                    <tr>
                                       <c:set var="total" value="${total}"></c:set>
                                       <td colspan="6" align="right"><br><hr><br><p id="total">TOTAL ￦${total}</p></td>
                                    </tr>
                        </c:if>   
                        
                        <c:if test="${cartList.size() == 0}">
                           <tr><td colspan="6"></td></tr>   
                           <tr>
                              <td colspan="6"><marquee>장바구니가 비어있습니다.</marquee></td>
                           </tr>
                        </c:if>
                        </table>
                     </div>
                     
                     <br>
                     <div class="buttons" align="right">
                     <input type="button" value="전체상품주문" class="button btn" onclick="allSelect()">
                     <input type="button" value="선택상품주문" class="button btn" onclick="orderSelect()">
                     <input type="button" value="쇼핑 계속하기" class="button btn1" onclick="location.href='mainHome'">
                     </div>
               </div>
            </div>
         </div>
      </div>            

</body>
</html>