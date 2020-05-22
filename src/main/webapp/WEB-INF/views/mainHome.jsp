<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"  href="https://han3283.cafe24.com/js/lightslider/css/lightslider.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Gloria+Hallelujah&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gloria+Hallelujah&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet"> <!-- Noto Sans JP -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://han3283.cafe24.com/js/lightslider/js/lightslider.js"></script>
    
    
<script type="text/javascript">

// 이미지 슬라이드
$(document).ready(function() {
    $("#slider").lightSlider({
        mode:'slide',    // 이미지가 표시되는 형식 (fade / slide)
        loop:true,       // 무한반복 할 것인지
        auto:true,       // 자동 슬라이드
        keyPress:true,   // 키보드 탐색 허용
        pager:false,     // 페이지 표시
        speed:1500,      // 슬라이드 되는 속도
        pause:3000       // 이미지가 머무는 시간
    });
});

function test(){
	alert("안녕");
}
</script>

<style type="text/css">
/* 가운대 중단 */
*{ 
   margin: 0; 
   padding: 0; 
}
ul, ol, li{ 
   list-style: none;
} 

/*   반응형이 되도록 해놨고, 위에 슬라이드랑 똑같은 사이즈로 해놈 */
#hotItem{
   position: relative;
   width: 100%;
   max-width: 2000px;
   margin: 300px auto 50px;
   font-size: 10px;
}

/*   신상품 제목부분 */
.NewTitle{
   text-align: center;
   font-weight: normal;
   letter-spacing: 5px;
   margin-bottom: 40px;
}
.hotItemUL{}
.hotItemUL li{
   float: left;
   margin-right: 2%;
   width: 32%;
   padding: 10px;
   box-sizing: border-box;
}
.hotItemUL li:nth-child(3n){
   margin-right: 0;
}
.hotItemUL a{
   width: 100%;
   color: inherit;
   text-decoration: none;
}
.hotItemUL a img{
   width: inherit;
}
.hotItemUL a .itemName{
   display: block;
   margin: 10px 0;
}

.hotItemUL .color span{
   display: inline-block;
   font-size: 0;
   line-height: 0;
   width: 12px;
   height: 12px;
}
/*   옷색상 컬러 */
.hotItemUL .c_icon1{
   background-color: black;
}
.hotItemUL .c_icon2{
   background-color: blue;
}
.hotItemUL .c_icon3{
   background-color: navy;
}
.hotItemUL .c_icon4{
   background-color: white;
   border: 1px solid #ccc;
}
.hotItemUL .c_icon5{
   background-color: #e1cdb4;  /*베이지*/
}
.hotItemUL .c_icon6{
   background-color: gray;
}
.hotItemUL .c_icon7{
   background-color: #424242; /* 회색 */
}
.hotItemUL .c_icon8{
   background-color: #b8c9db; /* 연청 */
}

/*   new아이콘 부분 사이즈 조절은 알아서 바꿔도 됨   */
.hotItemUL .newIcon{
   border: 1px solid;
   display: inline-block;
   margin: 15px 0;
   padding: 3px 10px;
}


/* 슬라이드 */
ul{
  list-style: none outside none;
  padding-left: 0;
  margin: 0;
}
.slide-content .slide-content{
  margin-bottom: 60px;
}
.slider li{
  text-align: center;
  color: #FFF;
  background-size:cover;
  background-position: center;
}
.slider h3 {
  margin: 0;
  padding: 100px 0;
  height:200px;
}
.slide-content{
  width: 100%;
  height:250px;
}
.item1{background-image:url('${pageContext.request.contextPath }/resources/images/top1.jpg');}
.item2{background-image:url('${pageContext.request.contextPath }/resources/images/outer_image1.jpg');}
.item3{background-image:url('${pageContext.request.contextPath }/resources/images/bottom1.jpg');}
.item4{background-image:url('${pageContext.request.contextPath }/resources/images/shoes1.jpg');}
.item5{background-image:url('${pageContext.request.contextPath }/resources/images/outer_image2.jpg');}
.item6{background-image:url('${pageContext.request.contextPath }/resources/images/outer_image3.jpg');}


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
.slide-wrap{
	margin-bottom: 300px;
} 

</style>

</head>
<body >
<jsp:include page="item.jsp"/>
<div id="wrap">
	<div id="container">
		<!-- 가운대 틀 -->
		<div id="contents">
			<div class="sub_contents_inner">
				<div class="contents_inner">
					
					<!-- 위쪽 상단 슬라이드 이미지 -->
					<div class="slide-wrap">
						<div class="slide-content" align="center">
							<h2 style="font-family: font-family: 'Noto Sans JP', sans-serif; font-weight: lighter; letter-spacing: 7px; margin: 0px 0 37px; font-size: 17px"; >BEST</h2>
						    <ul id="slider" class="slider">
						        <li class="item1">
						            <h3></h3>
						        </li>
						        <li class="item2">
						            <h3></h3>
						        </li>
						        <li class="item3">
						            <h3></h3>
						        </li>
						        <li class="item4">
						            <h3></h3>
						        </li>
						        <li class="item5">
						            <h3></h3>
						        </li>
						        <li class="item6">
						            <h3></h3>
						        </li>
						    </ul>
						</div>
					</div>
					<!-- 중간 베스트 아이템 -->
					<div id="hotItem">
					   <!--   신상품 타이틀  -->
					   <h2 class="NewTitle" style="font-family: font-family: 'Noto Sans JP', sans-serif;">NEW ARRIVALS</h2>
					   <ul class="hotItemUL">
					      <li style="font-size: 17px;">
					         <a href="#">
					            <!--   img태그에 넣고싶은 사진 넣기   -->
					            <img src="${pageContext.request.contextPath }/resources/images/Hoodie01.jpg" alt="Hoodie01">
					            <!--   신상옷의 각각의 제목 적는 곳  -->
					            <span class="itemName">이지 포켓 후드 아노락 (2col)</span>
					         </a>
					         <p class="price">
					            <!--   할인 전 가격  -->
					            <span style="text-decoration: line-through; margin-right: 10px; ">54,000won</span>
					            <!--   할인 후 가격  -->
					            <span>51,300won</span>
					         </p>
					         <p class="color">
					            <!--   옷 색상 아이콘  -->
					            <span class="c_icon1">검정</span>
					            <span class="c_icon2">파랑</span>
					         </p>
					         <p class="newIcon">NEW</p>
					      </li>
					
					      <li style="font-size: 17px;">
					         <a href="#">
					            <img src="${pageContext.request.contextPath }/resources/images/Sweatshirt02.jpg" alt="Sweatshirt02">
					            <span class="itemName">파라다이스 맨투맨 (3col)</span>
					         </a>
					         <p class="price">
					            <span style="text-decoration: line-through; margin-right: 10px; ">28,000won</span>
					            <span>25,000won</span>
					         </p>
					         <p class="color">
					            <span class="c_icon1">검정</span>
					            <span class="c_icon2">파랑</span>
					            <span class="c_icon5">베이지</span>
					         </p>
					         <p class="newIcon">NEW</p>
					      </li>
					
					      <li style="font-size: 17px;">
					         <a href="#">
					            <img src="${pageContext.request.contextPath }/resources/images/washingshirt.jpg" alt="washingshirt">
					            <span class="itemName">헤비 피그먼트 워싱 셔츠(4color)</span>
					         </a>
					         <p class="price">
					            <span style="text-decoration: line-through; margin-right: 10px; ">46,000won</span>
					            <span>41,600won</span>
					         </p>
					         <p class="color">
					            <span class="c_icon1">블랙</span>
					            <span class="c_icon5">베이지</span>
					            <span class="c_icon6">그레이</span>
					            <span class="c_icon7">회색</span>
					         </p>
					         <p class="newIcon">NEW</p>
					      </li>
					
					      <li style="font-size: 17px;">
					         <a href="#">
					            <img src="${pageContext.request.contextPath }/resources/images/bag01.jpg" alt="bag01">
					            <span class="itemName">울 크리에이트 토트 백  (3col)</span>
					         </a>
					         <p class="price">
					            <span style="text-decoration: line-through; margin-right: 10px; ">39,000won</span>
					            <span>34,500won</span>
					         </p>
					         <p class="color">
					            <span class="c_icon1">블랙</span>
					            <span class="c_icon5">베이지</span>
					            <span class="c_icon6">그레이</span>
					         </p>
					         <p class="newIcon">NEW</p>
					         
					      </li>
					
					      <li style="font-size: 17px;">
					         <a href="#">
					            <img src="${pageContext.request.contextPath }/resources/images/denim01.jpg" alt="denim01">
					            <span class="itemName">샌드 캣 워싱 진  (2col)</span>
					         </a>
					         <p class="price">
					            <span style="text-decoration: line-through; margin-right: 10px; ">53,000won</span>
					            <span>49,600won</span>
					         </p>
					         <p class="color">
					            <span class="c_icon8">검정</span>
					         </p>
					         <p class="newIcon">NEW</p>
					      </li>
					
					      <li style="font-size: 17px;">
					         <a href="#">
					            <img src="${pageContext.request.contextPath }/resources/images/shoes01.jpg" alt="shoes01">
					            <span class="itemName">런 스파크 하이탑 (2col)</span>
					         </a>
					         <p class="price">
					            <span style="text-decoration: line-through; margin-right: 10px; ">74,000won</span>
					            <span>71,300won</span>
					         </p>
					         <p class="color">
					            <span class="c_icon1">검정</span>
					            <span class="c_icon4">파랑</span>
					         </p>
					         <p class="newIcon">NEW</p>
					      </li>
					   </ul>
					</div>					
				</div>
			</div>
		</div>
		<jsp:include page="item2.jsp"/>
	</div>
</div>
</body>
</html>