<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MY PAGE</title>
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
 
 //	비밀번호 변경
function changePass(){
	   var url = "changePass";
	   var title = "pw";
	   var option = "width=700,height=420, scrollbars=yes, resizable=none";
	   window.open(url,title,option);
}
</script>
<style type="text/css">
.order{ margin-left: 50px; margin-top: 100px;}
#font1{ font-size: 18px;}
.font2{ font-size: 15px;}
a{text-decoration: none}
a:visited { text-decoration: none; color:black;} 
table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin: auto;
  margin-bottom: 25px;
}

td, th {
    border: none;
 	padding: 8px;
}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #ffb5b5;
  color: white;
}
</style>
</head>

<body>
	<jsp:include page="item.jsp" flush="true"/>
		<div id="contents">
			<div class="sub_contents_inner">
				<div class="contents_inner">
					<!-- Center TOP -->
					<div id="hotItem">
	    <h2 class="Title" style="font-family: font-family: 'Noto Sans JP', sans-serif;">MY PAGE</h2>
					
		<table class="order">
			<tr align="left">
				<td colspan="6"><hr><br><br><br><br>
						<b id="font1">ORDER STATUS</b>&nbsp;&nbsp;최근 3개월<br><br><br>
													
						<span class="font2">입금 전 &nbsp;&nbsp;<a href="javascript:click_number(0)">${countVO.ndeposit}</a></span>&nbsp;&nbsp;|&nbsp;&nbsp;
						<span class="font2">배송준비중 &nbsp;&nbsp;<a href="">${countVO.deposit}</a></span>&nbsp;&nbsp;|&nbsp;&nbsp;
						<span class="font2">배송중 &nbsp;&nbsp;<a href="">${countVO.delivery}</a></span>&nbsp;&nbsp;|&nbsp;&nbsp;
						<span class="font2">배송완료 &nbsp;&nbsp;<a href="">${countVO.cdelivery}</a></span>&nbsp;&nbsp;|&nbsp;&nbsp;
						<span class="font2">취소/반품 &nbsp;&nbsp;<a href="">${countVO.cancel}</a></span>&nbsp;&nbsp;|&nbsp;&nbsp;
						　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
				</td>
			</tr>
			<tr>
						<td width="400">상품</td>
						<td width="100">가격</td>
						<td width="50">수량</td>
						<td width="100">배송비</td>
						<td width="150">TOTAL</td>
						<td width="100">NOW</td>
			</tr>
			<c:forEach var="vo" items="${list}">
				<c:if test="${vo.status==0}">
					<tr align="left">
						<td><img onload="resize(this)" src="${pageContext.request.contextPath }/resources/goodsupload/goodsupload_${vo.category}/${vo.id_number}">
							${vo.item_name}(${vo.color})</td>
						<td>${vo.price}</td>
						<td>${vo.ea}</td>
						<td>2500</td>
						<td><c:set var="total" value="${(vo.price*vo.ea)+2500}"/>${total}</td>
						<td><c:if test="${vo.status==0}">입금전</c:if><c:if test="${vo.status==1}">배송준비중</c:if><c:if test="${vo.status==2}">배송중</c:if>
						<c:if test="${vo.status==3}">배송중</c:if><c:if test="${vo.status==4}">취소/반품</c:if></td>
					</tr>
				</c:if>
			</c:forEach>
			
			<tr><td><br><br><br><br><hr><br><br><br><br></td></tr>
			<tr>
				<td>
						<b id="font1">배송 조회</b>&nbsp;&nbsp;<br><br><br>
						<span class="font2">▶▶▶▶ &nbsp;&nbsp;<a href="https://www.doortodoor.co.kr/parcel/pa_004.jsp">배송 조회 하기</a></span>							
				</td>
			</tr>
			<tr><td><br><br><br><br><hr><br><br><br><br></td></tr>
			<tr>
				<td colspan="5">
						<b id="font1">내 정보</b>&nbsp;&nbsp;<br><br><br>
						<span class="font2">아이디　　: ${vo.id}</span><br><br>
						<span class="font2">이름　　　: ${name}</span><br><br>
						<span class="font2">생년월일　: ${vo.birth}</span><br><br>
						<span class="font2">핸드폰　　: ${vo.phone}</span><br><br>	
						<span class="font2">주소　　　: ${vo.addr}</span><br><br>
						<span class="font2"><input type="button" value="비밀번호 변경" onclick="changePass()"/></span><br><br>
				</td>
			</tr>
		</table>
		
		</div>
	</div>
</div>
</div>

</body>
</html>