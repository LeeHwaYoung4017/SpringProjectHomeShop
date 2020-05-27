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
     border-top: 3px solid #168;
  width: 75%;
  margin: auto;
  margin-bottom: 25px;
}
table tr td{
	text-align: center;
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
div input{
	  width:100px;

    background-color: #168;

    border: none;

    color:#fff;

    padding: 15px 0;

    text-align: center;

    text-decoration: none;

    display: inline-block;

    font-size: 15px;

    margin: 4px;

    cursor: pointer;
    
	border-radius:10px;


}

</style>
</head>
<body>

<jsp:include page="item.jsp" flush="true"/>
		<div id="contents">
           <div class="sub_contents_inner">
              <div class="contents_inner">
			 <table style="width:700; cellpadding:0; cellspacing:8;">
             <caption><strong> <h3>결제 상품</h3></strong> <br/><br/></caption>
            
               	<tr>
					<td width="400">상품</td>
					<td width="70">판매가</td>
					<td width="50">수량</td>
					<td width="150">받으시는 분</td>
					<td width="100">EMAIL</td>
					<td width="100">PHONE</td>
					<td width="250">배송 주소</td>
				</tr>
				<c:forEach var="list" items="${statusList}">
					<tr align="left">
						<td><img onload="resize(this)" src="${pageContext.request.contextPath }/resources/goodsupload/goodsupload_${list.category}/${list.id_number}">
							${list.item_name}(${list.color},${list.item_size},${list.ea})</td>
						<td>${list.price}</td>
						<td>${list.ea}</td>
						<td>${list.name}</td>
						<td>${list.email}</td>
						<td>${list.phone}</td>
						<td>${list.addr}</td>
					</tr>
				</c:forEach>
            </table>
             <table>
             <caption><strong> <h3>결제 정보</h3></strong> <br/><br/></caption>
             <tr>
					<td width="150">입금자명</td>
					<td width="250">입금은행</td>
					<td width="250">최종결제 금액</td>
				</tr>
				<tr>
				<td>${payName}</td>
				<td>${bank}</td>
				<td style="font-size:1.5em; color:red; font-weight: bold;">${totalPrice+2500} won</td>
				</tr>
              </table>
              <input type="button" value="쇼핑 하러" onclick="location.href='mainHome'"/>
              <input type="button" value="장바구니로"/>
              
              
              </div>
           </div>
        </div>
</body>
</html>