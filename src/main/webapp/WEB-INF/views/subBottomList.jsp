<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet"> <!-- Noto Sans JP -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
    <script src="https://han3283.cafe24.com/js/lightslider/js/lightslider.js"></script>
<script type="text/javascript">
function resize(img){

    // 원본 이미지 사이즈 저장
    var width = img.width;
    var height = img.height;

    var newW = 300;
    var newH = 300;
    
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

/*   신상품 제목부분 */
.NewTitle{
   text-align: center;
   font-weight: normal;
   letter-spacing: 10px;
   margin-bottom: 40px;
}
.hotItemUL{}
.hotItemUL li{
   float: left;
   margin-right: 2%;
   width: 32%;
   height: 470px;
   padding: 5px;
   box-sizing: border-box;
}
.hotItemUL li:nth-child(3n){
   margin-right: 0;
}
.hotItemUL a{
   width: 80%;
   color: inherit;
   text-decoration: none;
}
.hotItemUL a .itemName{
   display: block;
   margin: 10px 0;
}

/*   new아이콘 부분 사이즈 조절은 알아서 바꿔도 됨   */
.hotItemUL .newIcon{
   border: 1px solid;
   display: inline-block;
   margin: 15px 0;
   padding: 3px 10px;
}

li{list-style: none; font-family: font-family: 'Noto Sans JP', sans-serif; font-size: 30px;}
a{text-decoration: none}


.product_listmain {
    margin: 0px 0 37px;
    border-bottom: 0px solid #eee;
}
.product_listmain ul.prdList {
    display: table;
    width: 140%;
    margin: 0 auto;
    margin-left: 0px;
    font-size: 0;
    line-height: 0;
    text-align: left;
}
.product_listmain ul.column3 li.item {
    width: 33.3%;
}
.product_listmain ul.column3 li.item .box {
    width: 90%;
}
.page{margin-left: 50%;}

.white_icon{
   border : 1px solid black;
}
.black_icon{
   background-color: black;
}
.sky_icon{
   background-color: aqua;
}
.blue_icon{
   background-color: blue;
}
.gray_icon{
   background-color: gray;
}
.red_icon{
   background-color: red;
}
.hotItemUL .color span{
   display: inline-block;
   font-size: 0;
   line-height: 0;
   width: 12px;
   height: 12px;
}
.pageBtn{
	margin-left: 50%;
	position: fixed; bottom: 0; width: 100%;
}
.button {
  background-color: black; /* Green */
  border: none;
  color: white;
  padding: 3px 5px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.btn {
  background-color: white;
  color: black;
  border: 2px solid #555555;
}

.btn:hover {
  background-color: #555555;
  color: white;
}
</style>

</head>
<body>
<jsp:include page="item.jsp" flush="true"/>
<!-- 가운대 틀 -->
<div id="contents">
	<div class="sub_contents_inner">
		<div class="contents_inner">
			<!-- TOP -->
			<div id="hotItem">
			   <h2 class="NewTitle" style="font-family: font-family: 'Noto Sans JP', sans-serif;">BOTTOM</h2>
			   <li align="right" style="font-size: small;">
						${goodsList.totalCount}(${goodsList.currentPage}/${goodsList.totalPage})<br>
				</li>
			   <ul class="hotItemUL">
			   <jsp:useBean id="date" class="java.util.Date"/>
			   <c:set var="list" value="${goodsList.goodList}"/>
			   <c:forEach var="vo" items="${list}">
			      <li style="font-size: 17px;">
			         <a href="contentView_goods?idx=${vo.idx}&currentPage=${goodsList.currentPage}">
			            <!--   img태그에 넣고싶은 사진 넣기   -->
		            	<img onload="resize(this)" src="${pageContext.request.contextPath }/resources/goodsupload/goodsupload_bottom/${vo.id_Number}">
			            <!--   신상옷의 각각의 제목 적는 곳  -->
			            <span class="itemName">${vo.name}</span>
			         </a>
			          <p class="color">
			         	<c:set var="colorValue" value="${vo.goodsColor}"/>
			         	<c:forEach var="spt" items="${fn:split(colorValue , ',')}">
			         		<span class="${spt}_icon">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;
			         	</c:forEach>
			         </p>
			         <p class="price">
			            <!--   할인 전 가격  -->
			            <span style="text-decoration: line-through; margin-right: 10px; ">${vo.price}</span>
			            <!--   할인 후 가격  -->
			            <span>${vo.price-2000}￦</span>
			         </p>
			         
			         <fmt:parseNumber value="${vo.writeDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"/>
						<fmt:parseNumber value="${date.time / (1000*60*60*24)}" integerOnly="true" var="nowDate"/>
						
				      	 <c:if test="${(nowDate-strDate)<=7}">
	                        <p class="newIcon">NEW</p>
	                     </c:if>
                     
			      </li>
			      </c:forEach>
			  		 </ul>
		   		 </div>
			 </div>	
		  </div>
		 </div> 
		 
	<div class="pageBtn">
		   <c:if test="${goodsList.startPage > 1}">
				<input class="button btn" type="button" value="<<" onclick="location.href='?currentPage=1'" title="첫 페이지"/>
				<input class="button btn" type="button" value="<" 
						onclick="location.href='?currentPage=${goodsList.startPage - 1}'" 
						title="이전 10 페이지"/>
			</c:if>
			
			<!-- 페이지 이동 -->
			<c:forEach var="i" begin="${goodsList.startPage}" end="${goodsList.endPage}" step="1">
			
				<c:if test="${i == goodsList.currentPage}">
					<input class="button btn" type="button" value="${i}" disabled="disabled"/>
				</c:if>
				
				<c:if test="${i != goodsList.currentPage}">
					<input class="button btn"  type="button" value="${i}" onclick="location.href='?sub=${sub}&currentPage=${i}'" 
						title="${i}페이지로 이동합니다."/>
				</c:if>
			</c:forEach>
			
			<!-- 마지막으로, 10페이지 뒤로 -->
			<c:if test="${goodsList.endPage < goodsList.totalPage}">
				<input class="button btn" type="button" value=">" 
						onclick="location.href='?currentPage=${goodsList.endPage + 1}'" title="다음 10 페이지로 이동합니다."/>
				<input class="button btn" type="button" value=">>" 
						onclick="location.href='?currentPage=${goodsList.totalPage}'" title="마지막 페이지로 이동합니다."/>
			</c:if>	
		</div>		
</body>
</html>