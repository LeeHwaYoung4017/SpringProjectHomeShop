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
			 <table width="700" cellpadding="0" cellspacing="8">
               	<caption>주문내역</caption>
               	<tr>
					<td width="400">상품</td>
					<td width="100">판매가</td>
					<td width="50">수량</td>
					<td width="150">받으시는 분</td>
					<td width="150">EMAIL</td>
					<td width="150">PHONE</td>
					<td width="150">배송 주소</td>
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
              </div>
           </div>
        </div>
</body>
</html>