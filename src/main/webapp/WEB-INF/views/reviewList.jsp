<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   
<style type="text/css">
   a { color: black; text-decoration: none; }
   .tbody tr:hover { color: white; font-weight: bold; background: purple; }

/* 내가 손댄 부분 */
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
}
table.type09 thead {
    padding: 10px;
    font-size: larger;
    font-weight: bold;
    vertical-align: top;
   background: lightgrey;
    border-bottom: 3px solid #036;
}
table.type09 tbody {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
   
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

.button{
 border: 2px solid #58D3F7;
 background-color: white;
 border-radius: 5px;
 border-width: medium;
 padding: 2px;
}

.btn{
  padding: 8px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  cursor: pointer;
}

/* 별점 */
.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  background-size: auto 100%;
  width: 25px;
  height: 25px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
}
.starR.on{background-position:0 0;}
 
</style>

<script type="text/javascript">

function resize(img){

    // 원본 이미지 사이즈 저장
    var width = img.width;
    var height = img.height;

    var newW = 100;
    var newH = 150;
    
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
 

 function changeStar(num) {
	alert(num);
}
 

 
</script>

</head>
<body>
<jsp:include page="item.jsp" flush="true"/>
      <!-- 가운대 틀 -->
      <div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner">
               <!-- Center TOP -->
               <div id="hotItem">
                   <h2 class="Title" style="font-family: font-family: 'Noto Sans JP', sans-serif;">REVIEW</h2>
                      <!-- 전체 글 수 -->
                      <li align="right" style="font-size: small;">
                        ${reviewList.totalCount}(${reviewList.currentPage}/${reviewList.totalPage})
                     </li>
               <!-- table -->
               <table align="center" cellpadding="5" cellspacing="0" class="type09">
               <thead>
               
               <tr>
                  <td width="80" align="center">정보</td>
                  <td width="620" align="center">내용</td>
                  <td width="100" align="center">작성자</td>
                  <td width="120" align="center">작성일</td>
               </tr>
               </thead>
               
               <tbody class="tbody">
               <!-- request 영역의 noticeList 객체에서 1페이지 분량의 글이 저장된 ArrayList(noticeList)의 내용만 얻어내서 별도의 변수에 저장한다. -->
               <c:set var="list" value="${reviewList.reviewList}"/>
               <c:set var="goodslist" value="${goodslist}"/>
               
               
               <!-- 테이블에 글이 없으면 없다고 출력한다. -->
               <c:if test="${list.size() == 0}">
               <tr>
                  <td colspan="4" align="center">리뷰 글이 없습니다.</td>
               </tr>
               </c:if>
               
               <!-- 테이블에 글이 있으면 화면에 출력할 글의 개수 만큼 반복하며 글을 출력한다. -->
               <c:if test="${list.size() != 0}">
               
               <!-- 컴퓨터 시스템의 현재 날짜와 시간을 기억하는 Date 클래스 객체를 만든다. -->	
               <jsp:useBean id="date" class="java.util.Date"/>
               
               <c:set var="i" value="0"/>
               <c:forEach var="vo" items="${list}">
               <tr>
                  <td align="center" rowspan="3">
               <img src="${pageContext.request.contextPath }/resources/goodsupload/goodsupload_${goodslist[i].category}/${goodslist[i].id_Number}" onload='resize(this)'>  
                  </td>
               <c:set var="i" value="${i+1}"/>
                    <td> ${goodslist[i].name}</td> 
                    <td align="center" rowspan="3">
                     ${vo.name}
                  </td>
                  <td align="center" rowspan="3">
                     <!-- 오늘 입력된 글은 시간만 어제 이전에 입력된 글은 날짜만 표시한다. -->
                     <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
                        <fmt:formatDate value="${vo.writeDate}" pattern="a h:mm"/>
                     </c:if>
                     <c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month || date.date != vo.writeDate.date}">
                        <fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
                     </c:if>
                  </td>
               </tr>
               <tr>
               	<p onload="changeStar('${vo.star}')">
                  <td id="star">
                 	<span class="starR on">★</span>
			        <span class="starR">☆</span>
			        <span class="starR">☆</span>
			        <span class="starR">☆</span>
			        <span class="starR">☆</span>
                  </td>
                 </p> 
               </tr>
               <tr>
                  <td>
                     
                     <!-- 오늘 입력된 글은 new를 표시한다. -->
                     <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
                        <img src="${pageContext.request.contextPath }/resources/images/new.png"/>
                     </c:if>
                     
                     <c:set var="content" value="${fn:replace(fn:trim(vo.content), '<', '&lt;')}"/>
                     <c:set var="content" value="${fn:replace(content, '>', '&gt;')}"/>
                     <!-- 제목에 하이퍼링크를 걸어준다. => 하이퍼링크를 클릭하면 클릭된 글의 내용을 표시한다. -->
                     <a href="contentView_goods?idx=${vo.goodsidx}&currentPage=${reviewList.currentPage}">
                        ${content}
                     </a>
                     
                     
                  </td>
                  </tr>
               </c:forEach>
               </c:if>
               </tbody>
               <!-- 페이지 이동 버튼 -->
               <tr>
                  <td align="left" colspan="3">
                  
                  <!-- 처음으로, 10페이지 앞으로 -->
                  <c:if test="${reviewList.startPage > 1}">
                     <input class="button btn" type="button" value="<<" onclick="location.href='?currentPage=1'" title="첫 페이지로 이동합니다."/>
                     <input class="button btn" type="button" value="<" 
                           onclick="location.href='?currentPage=${reviewList.startPage - 1}'" 
                           title="이전 10 페이지로 이동합니다."/>
                  </c:if>
                  
                  <!-- 페이지 이동 -->
                  <c:forEach var="i" begin="${reviewList.startPage}" end="${reviewList.endPage}" step="1">
                  
                     <c:if test="${i == reviewList.currentPage}">
                        <input class="button btn" type="button" value="${i}" disabled="disabled"/>
                     </c:if>
                     
                     <c:if test="${i != reviewList.currentPage}">
                        <input class="button btn"  type="button" value="${i}" onclick="location.href='?currentPage=${i}'" 
                           title="${i}페이지로 이동합니다."/>
                     </c:if>
                  
                  </c:forEach>
                  
                  <!-- 마지막으로, 10페이지 뒤로 -->
                  <c:if test="${reviewList.endPage < reviewList.totalPage}">
                     <input class="button btn" type="button" value=">" 
                           onclick="location.href='?currentPage=${reviewList.endPage + 1}'" title="다음 10 페이지로 이동합니다."/>
                     <input class="button btn" type="button" value=">>" 
                           onclick="location.href='?currentPage=${reviewList.totalPage}'" title="마지막 페이지로 이동합니다."/>
                  </c:if>            
                  </td>
                 
               </tr>
            
            </table>
                           
                     
               </div>               
            </div>
            
         </div>
      </div>
   </div>
</div>
</body>
</html>