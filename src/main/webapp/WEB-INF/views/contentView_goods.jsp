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
<style>

/* 왼쪽 상단 부분 */
.left-side {
width:500px;
height:650px;
float:left;
margin:20px;
margin-left: 100px;

}

/* 오른쪽 상단 부분 */
.right_side {
width:500px;
height:650px;
float:left;
margin:20px;


}


input[type=text] {
width: auto; /* 원하는 너비 설정 */ 
height: auto; /* 높이값 초기화 */ 
line-height : normal; /* line-height 초기화 */
 padding: 1px 1px; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */ 
 font-family: inherit; /* 폰트 상속 */ 
 border: none; 
 outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */ 
 appearance: none;

}
.review_textfieldBox{
height: auto;
margin-bottom: 8px;
padding: 15px 13px;
border: 1px solid #dadada;
position: relative;
transition: padding-top 0.3s ease;
}

.review_textfield{
min-height: 100px;
    height: auto;
    font-size: 14px;
    line-height: 16px;
    margin: 0px;
    border: 0;
    width: 100%;
    outline: transparent;
    resize: none;
    overflow: hidden;

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

.saveReview{
 width: 204px;
 height: 33px;
 border: 1px solid #dadada;
 margin-right: 5px;
 text-align: center;
}

.reviewBox {
min-height: 150px;
    height: 300px;
    margin: 0px;
    width: 100%;
    outline: transparent;
    resize: none;
    overflow: hidden;
}
/* 파일업로드 이미지설정 */

.addfile{
position: relative;
height: 35px;
}
.filebox label {
 position: absolute;
    left: 0;
  display: inline-block;
  padding: .5em .75em;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  cursor: pointer;
  border: 1px solid #dadada;
  border-radius: .25em;
}

.filebox label:hover {
  background-color: #dadada;
}

.filebox input[type="file"] {
  width: 1px;
  height: 1px;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">


function resize(img){
	
    // 원본 이미지 사이즈 저장
    var width = img.width;
    var height = img.height;

    var newW = 500;
    var newH = 650;
    
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
 

window.onload = function(){
/* 서브 이미지  */
 var img = document.getElementById("imggo");
    var imgname = "${vo.id_Number}";
    var nn = "${vo.photo}";
    var num = imgname.split('.');//ex) 2 그리고 .jsp
    for(var i=1; i <= nn; i++){
       var sp = document.createElement("span")
       sp.innerHTML =  "<img src='${pageContext.request.contextPath }/resources/goodsupload/goodsupload_${vo.category}/"
          + num[0]+"_"+ i + "."+num[1] +"' onload='resize(this)'/><br/>";
       img.appendChild(sp);      
    }
}

function itemList(selectVal){
   var tr = document.createElement("tr")
    var table1 = document.getElementById("table1");
    table1.appendChild(tr);
    /* 상품명설정 */
    var name1 = '${vo.name}'
     var ho = document.createElement("td");
     var color;
     var size_t = selectVal;

     if(selectVal != "1"){
            color = document.querySelector("#cili").value.toUpperCase()
            var list = "-" + color +"/" + size_t/* ex)-white/S */
                ho.innerHTML = name1 +"<br/> "+ list;
                /* $("#num1").attr("readonly", true); */
      } 
     
      tr.appendChild(ho); 
      /* 수량설정 */
      var ho1 = document.createElement("td")
      
     ho1.innerHTML = "<input type='button'  name='cal' value='-' onclick='minus(this)'>"
       + "<input type='text' value= '1' name='ea' style='width : 20px'>" 
       + "<input type='button' value='+' onclick='plus(this)'>"
       + "<input type='hidden' value='"+color+"' name='color'>"
       + "<input type='hidden' value='"+size_t+"' name='size_t'>";
      tr.appendChild(ho1);
      
    /* 가격설정 */
     var ho2 = document.createElement("td")
    var price = ${vo.price}
     ho2.setAttribute("class", "setPrice");
     ho2.innerHTML = price + "won"
      tr.appendChild(ho2);
     
     var dd = document.getElementById("calc").innerHTML;
     dd *= 1;
     var ss = dd + price;
     var dd1 = document.getElementById("calc")
     dd1.innerHTML = ss;
     
     $("#sum").attr("hidden", false);   
}

function minus(obj){
 
 var dd = document.getElementById("calc").innerHTML;
 var dd1 = document.getElementById("calc");
  dd *= 1; //숫자로 형변환
 
 var test = obj.nextSibling;
 var val = test.value
 if(val == "1"){
    var result = confirm("삭제하시겠습니까?");
    if(result){
       var del = obj.parentNode.parentNode; //tr태크
       var table = del.parentNode
       table.removeChild(del)
        var ss = dd - 10000;
        dd1.innerHTML = ss;
        var d2 = document.getElementById("calc").innerHTML;
        if(d2 == 0){
           $("#sum").attr("hidden", true);
        }
    }
 }else {
    var newval = val - 1;
    $(test).val(newval)
    
 
     var price = ${vo.price}
     var newPri = newval * price;
     //price의 td에 값 집어넣기
     var td = obj.parentNode.nextSibling /*  price의 td  */
    td.innerHTML = newPri + "won"
    
    //total price
     var ss = dd - 10000;
     dd1.innerHTML = ss;
  
 } 
} 

function plus(obj){
 var test = obj. previousSibling;
 var val = test.value //1
 
  val *= 1    /* 숫자로 형변환 */
    var newval = val + 1;
    $(test).val(newval)
    
    var price = ${vo.price}
     var newPri = newval * price;
     
  var td = obj.parentNode.nextSibling /*  price의 td  */
  td.innerHTML = newPri + "won"
  
  var dd = document.getElementById("calc").innerHTML;
  var dd1 = document.getElementById("calc");
  dd *= 1; //숫자로 형변환
  
  var ss = dd + 10000;
  dd1.innerHTML = ss;
  
  
} 

//바로구매 버튼
var orderRequest = new XMLHttpRequest();
function buyNow(){
   var table = document.getElementsByTagName("tr");
   for(var i=0; i<table.length; i++){
      var color = document.getElementsByName("color")[i].value;
      var size = document.getElementsByName("size_t")[i].value;
      var ea = document.getElementsByName("ea")[i].value;
      var idx = document.getElementById("hidIdx").value;
      var price = document.getElementById("price").value;
      var category = document.getElementById("category").value;
      var id_number = document.getElementById("id_number").value;
      var item_name = document.getElementById("item_name").value;
      
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
   }
   orderRequest.onreadystatechange = buyresponse;
   }

function buyresponse(){
   if(orderRequest.readyState == 4 && orderRequest.status == 200) {
      location.href="orderBuy";
   }
}

var searchRequest = new XMLHttpRequest();
function reSize(){
   var url="./reSize?color=" + encodeURIComponent(document.getElementById("cili").value) + "&idx=" + encodeURIComponent(document.getElementById("hidIdx").value);
   searchRequest.open("POST",url ,true);
   searchRequest.onreadystatechange = reSizeProcess;
   searchRequest.send(null);
}

function reSizeProcess(){
   if(searchRequest.readyState == 4 && searchRequest.status == 200) {
      $("#hero").empty();
      var object = eval("(" + searchRequest.responseText + ")");
      var result = object.result;
      var ho = document.createElement("div");
      var hero = document.getElementById("hero");
      
      var str =  "SIZE <select name='sizeSelection' id='sizeSelection' onchange='itemList(this.value)'>" + 
                 "<option value ='1'>--[필수] 사이즈 선택--</option>";
                 
      for (var i = 0; i < result.length; i++) {
         var str = str + "<option value='" + result[i][0].value + "'>" +result[i][0].value + "</option>";
         ho.innerHTML = str;
      }
      str= str + "</select>";
      hero.appendChild(ho);
   }
}

var insertRequest = new XMLHttpRequest();
function addToCart(){
   var table = document.getElementsByTagName("tr");
   for(var i=0; i<table.length; i++){
      var color = document.getElementsByName("color")[i].value;
      var size = document.getElementsByName("size_t")[i].value;
      var ea = document.getElementsByName("ea")[i].value;
      var idx = document.getElementById("hidIdx").value;
      var price = document.getElementById("price").value;
      var category = document.getElementById("category").value;
      var id_number = document.getElementById("id_number").value;
      var item_name = document.getElementById("item_name").value;
      
      var url="./addToCart?color=" + encodeURIComponent(color)
                      +"&size=" + encodeURIComponent(size) 
                      +"&ea=" + encodeURIComponent(ea)
                      +"&idx=" + encodeURIComponent(idx)
                      +"&price=" + encodeURIComponent(price)
                      +"&category="+ encodeURIComponent(category)
                      +"&id_number="+ encodeURIComponent(id_number)
                     +"&item_name="+ encodeURIComponent(item_name);
      insertRequest.open("POST",url ,true);
      insertRequest.send(null);
   }
   insertRequest.onreadystatechange = addCartSession;
} 

function addCartSession(){
   if(insertRequest.readyState == 4 && insertRequest.status == 200) {
      var result = confirm("장바구니로 이동하시겠습니까?");
      if(result){
         location.href="shoppingCart";
      }else{
         return false;
      }
   }
}

//아작스가 필요없어...ㅜㅜㅜㅜ
var reviewInsertRequest = new XMLHttpRequest();
function insertReview(frm){
   frm.submit();
   var star = document.getElementsByClassName("starR on");
   

   var url = "./insertReview?idx=" + encodeURIComponent(document.getElementById("hidIdx").value)
                     + "&content=" + encodeURIComponent(document.getElementById("review_message").value)
                     + "&name=" + encodeURIComponent('${name}')
                     + "&star=" + encodeURIComponent(star.length);//여기에 div의 값을 가져오게함.
   reviewInsertRequest.open("POST", url, true);
   reviewInsertRequest.onreadystatechange = insertProcess;
   reviewInsertRequest.send(null);
   
}

function insertProcess(){
   if(reviewInsertRequest.readyState == 4 && reviewInsertRequest.status == 200) {
            
      var result = reviewInsertRequest.responseText;
      if(result != 1) {
         alert("저장실패!!!");
      } else {
//         정상적으로 데이터가 테이블에 저장되면 다음 데이터 입력을 위해서 입력 상자에 입력한 내용을 지워준다.
         var content = document.getElementById("review_message");
         var attached = document.getElementById("reviewFile");
         content.value = "";
         attached.value = "";
   
//         입력된 데이터가 화면에 표시되야 하므로 데이터를 얻어오는 함수를 실행한다.
         //searchFunction();
      }
   }
}

var showRequest = new XMLHttpRequest();
var pagen;
function showReview(num) {
	var url = "./showReview?page="+ encodeURIComponent(num)
				+ "&idx=" + encodeURIComponent(document.getElementById("hidIdx").value);
	alert(num);/* 2로 따로 집어넣을때는 작동, 근데 >>>등 10페이지 뛰기면?? */	
	pagen = num;
	searchRequest.open("post",url,true);
	searchRequest.onreadystatechange = reviewProcess;
	searchRequest.send(null);
}
function reviewProcess() {
	if(searchRequest.readyState == 4 && searchRequest.status == 200) {
		var object = eval("(" + searchRequest.responseText + ")");	
		var result = object.result;
//		alert(result.length); //8
		var newPage = document.getElementById("newPage");
		newPage.innerHTML = "";
		
		for (var i = 0; i < result.length; i++) {
		var div = document.createElement("div");
//			tbody에 넣어줄 행을 만든다.
			/* 내용 */
			var content = result[i][0].value;
			/* 이름 */
			var name = result[i][1].value;
			/* 날짜 */
			var date = result[i][2].value;
			/* 사진 */
			var img = "<img src='${pageContext.request.contextPath }/resources/reviewimage/"+ result[i][3].value 
				+"' onerror='this.style.display= \"none\"' style='width: 100px;'/>";
			/* 별 */
			var stars = result[i][4].value;
			var shape;
			if (stars == 1) {
				shape = '★☆☆☆☆';
			}else if(stars ==2){
				shape = '★★☆☆☆';
			}else if(stars ==3){
				shape = '★★★☆☆';
			}else if(stars == 4){
				shape = '★★★★☆';
			}else if(stars ==5){
				shape = '★★★★★';
			}
 		 
 		div.innerHTML = "<div style='display: grid;grid-template-columns: 80% 20%; width: 90%;text-align: left;"
 					+	"border-bottom: solid 2px #ccc; margin-bottom: 7px;'>"
 					+ "<div class='box'>"
 					+ "<span style='color: #e27e37; size: 10px; font-size: 20px;' id='star'>"+ shape +"</span>"
 					+ "<div id='Rcontent'>"+ content +"</div>"
 					+ "<div  id='Rimage' style='margin-bottom: 10px;'>"+ img +"</div></div>"
 					+ "<div class='box'><div ><u style='color: #a59a9a;'><sub>작성자</sub></u><br/>"
                    + "<span id=Rname>"+ name + "</span> </div>"
                    + "<div ><u style='color: #a59a9a;'><sub>작성일</sub></u> <br/>"
                    + " <span id='day'>"+ date +"</span></div> </div> </div>";
          newPage.appendChild(div);      	

		}
		//1페이지 눌릴수 있게...사실 의도는 pagen버튼을 disabled하고싶었어ㅜㅡㅜㅜ
		var changePage = document.getElementById("changePage");
		 changePage.innerHTML = "<c:forEach var='i' begin='${reviewList.startPage}' end='${reviewList.endPage}' step='1'>"
		 				+ "<c:if test='${i == \""+ pagen +"\"}'>"
         				+ "<input class='button btn' type='button' value='${"+ pagen +"}' disabled='disabled'/> </c:if>"
         				+ " <c:if test='${i != \""+ pagen +"\"}'>"
         				+ " <input class='button btn'  type='button' value='${i}' id='page1' onclick='showReview(${i})'"
         				+ " title='${i}페이지로 이동합니다.'/> </c:if></c:forEach>";
         
}
}

/* 별점 */
$(function(){
$('.filebox span').click(function(){
     $(this).parent().children('span').removeClass('on');
     $(this).addClass('on').prevAll('span').addClass('on');
     return false;
   });


   
/* 후기작성 비회원경우 로그인창으로 */   
$('#review_message').click(function(){
   if('${name}' == ''){
      var result = confirm("로그인후 작성하실수 있습니다. 로그인창으로 이동하시겠습니까?");
       if(result){
          location.href = "login";
       }
   }
});   
});


</script>

</head>
<body>
<jsp:include page="item.jsp"/>
<div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner" align="center">
            <div class="left-side">
               <img src="${pageContext.request.contextPath}/resources/goodsupload/goodsupload_${vo.category}/${vo.id_Number}" onload="resize(this)"/> 
               <input type="hidden" value="${vo.category}" id="category">
               <input type="hidden" value="${vo.id_Number}" id="id_number">
                <input type="hidden" value="${idx}" id="hidIdx">
            </div>
            <div class="right_side" align="left">
               <div style="">${vo.name}</div>
               <input type="hidden" value="${vo.name}" id="item_name">
               <c:set var="price" value="${vo.price}"/>
               <div style="margin-top: 20px">${price} won <input type="hidden" value="${price}" id="price"></div> 
               <br/>
               <div  style="margin-top: 20px;margin-bottom: 20px; font-weight: bold;">-comment<br/></div>
                      ${vo.item_comment}<br/>
                       <br/><br/>
               <div>   COLOR  
            <!--    <input type="button" va> -->
                    
                
               <select id="cili" onchange="reSize()">
                    <option value ="1">--[필수] 색깔 선택--</option>
                    <c:forEach var="item" items="${stc}" >
                       <c:if test="${item.color ne color}"> 
                        <option var= "${item.color}">${item.color}</option>
                        </c:if>
                       <c:set var="color" value="${item.color}"/> 
                    </c:forEach>
               </select>
                    
                 </div>
                 
                
               <div id="hero">SIZE
               </div>
               
               <div>
                  <table id="table1">
                  
                  </table>
               </div>
                  
               
            <div id="sum" hidden="hidden">
            TOTAL <span id ="calc"></span> <!-- 계산공식 -->
            </div>   
            
            <div class="btn-goods">
               <input type="button" value="BUY NOW" onclick="buyNow()"/><!-- 비회원은 로그인창으로 회원은 결제창으로. -->
            </div>
            <div>
         
            <input type="button" value="ADD TO CART" onclick="addToCart()"/><!-- 장바구니 -->
            <input type="button" value="WISHLIST" onclick="wishlist(this.form)"/><!-- 마이리스트?? -->
            </div>
      </div>
      
      <!-- 서브 이미지 -->
      <div id="imggo"></div>
      
      
       <!-- 리뷰! --> 
     <h2>REVIEW</h2>
     <form id="uploadphoto" action="uploadReview?idx=${vo.idx}" method="post" enctype="multipart/form-data" >

     <div class ="reviewBox">
   <div class="review_textfieldBox">
        
     <textarea class="review_textfield" placeholder="리뷰를 남겨주세요." maxlength="2000" cols="5000" 
     name="review[message]" id="review_message"></textarea>
     </div>
     
     <div class=addfile>
        <div class=filebox>
           <label for="reviewFile"><img src='${pageContext.request.contextPath}/resources/images/camera.png' style='width: 30px;'> +사진추가</label>
           <input type="file" name="file" id="reviewFile"/>
     
        <span class="starR on">별1</span>
        <span class="starR">별2</span>
        <span class="starR">별3</span>
        <span class="starR">별4</span>
        <span class="starR">별5</span>
       
   
         <input class="saveReview" style="float: right;"type="button" value="리뷰 등록하기"  onclick="insertReview(this.form)"/>
     </div>
     </div>
     
     
</div>
</form>
<!-- 리뷰리스트!! -->
               
               <!-- request 영역의 noticeList 객체에서 1페이지 분량의 글이 저장된 ArrayList(noticeList)의 내용만 얻어내서 별도의 변수에 저장한다. -->
               <c:set  var="list" value="${reviewList.reviewList}"/>
               <div id="newPage">
             
               
               <!-- 테이블에 글이 없으면 없다고 출력한다. -->
               <c:if test="${list.size() == 0}">
               <span>
                  리뷰 글이 없습니다.
               </span>
               </c:if>
               
               <!-- 테이블에 글이 있으면 화면에 출력할 글의 개수 만큼 반복하며 글을 출력한다. -->
               <c:if test="${list.size() != 0}">
               
               <!-- 컴퓨터 시스템의 현재 날짜와 시간을 기억하는 Date 클래스 객체를 만든다. -->	
               <jsp:useBean id="date" class="java.util.Date"/>
               
               <c:forEach var="vo" items="${list}">
         	<div style="display: grid;grid-template-columns: 80% 20%; width: 90%;text-align: left; border-bottom: solid 2px #ccc; margin-bottom: 7px;">
         		<div class="box">
         			<span style="color: #e27e37; size: 10px; font-size: 20px;" id="star">
	         			<c:if test="${vo.star == 1 }">
	                     ★☆☆☆☆
	                     </c:if> 
	                     <c:if test="${vo.star == 2}">
	                     ★★☆☆☆
	                     </c:if> 
	                     <c:if test="${vo.star == 3}">
	                     ★★★☆☆
	                     </c:if> 
	                     <c:if test="${vo.star == 4}">
	                     ★★★★☆
	                     </c:if>
	                      <c:if test="${vo.star == 5}">
	                     ★★★★★
	                     </c:if>
	                     
                     	<!-- 오늘 입력된 글은 new를 표시한다. -->
		                     <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
		                        <img src="${pageContext.request.contextPath }/resources/images/new.png"/>
		                     </c:if>
                 	</span>
                 	<div id="Rcontent">
                 		 <c:set var="content" value="${fn:replace(fn:trim(vo.content), '<', '&lt;')}"/>
	                     <c:set var="content" value="${fn:replace(content, '>', '&gt;')}"/>
	                     <!-- 제목에 하이퍼링크를 걸어준다. => 하이퍼링크를 클릭하면 클릭된 글의 내용을 표시한다. -->
	                        ${content} 
                 	</div>
                 	 <div  id="Rimage" style="margin-bottom: 10px;"> <img src="${pageContext.request.contextPath }/resources/reviewimage/${vo.attached}"  
                         onerror="this.style.display='none'" style="width: 100px;"/>
                	</div> 
         		</div>
         		<div class="box">
         			<div >   
                  	<u style="color: #a59a9a;"><sub>작성자</sub></u><br/>
                     <span id=Rname>${vo.name}</span> 
                  </div>
              	 <div ><u style="color: #a59a9a;"><sub>작성일</sub></u>
                	 <br/>
                	 <span id="day">
                     <!-- 오늘 입력된 글은 시간만 어제 이전에 입력된 글은 날짜만 표시한다. -->
                     <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
                        <fmt:formatDate value="${vo.writeDate}" pattern="a h:mm"/>
                     </c:if>
                     <c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month || date.date != vo.writeDate.date}">
                        <fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
                     </c:if>
                     </span>
              	 	</div> 
         		</div>
            </div>
               </c:forEach>
               </c:if>            
                </div> <!-- ajax를 변동될 부분. -->
               <!-- 페이지 이동 버튼 -->
               <br/>
                  
                  <!-- 처음으로, 10페이지 앞으로 만약 내가 지금 이걸 js로 바꾸면 필요없움,-->
                  <c:if test="${reviewList.startPage > 1}">
                     <input class="button btn" type="button" value="<<" onclick="location.href='?currentPage=1'" title="첫 페이지로 이동합니다."/>
                     <input class="button btn" type="button" value="<" 
                           onclick="showReview()" 
                           title="이전 10 페이지로 이동합니다."/>
                  </c:if>
                  
                   <!-- 페이지 이동 -->
                   <span id="changePage">
                  <c:forEach var="i" begin="${reviewList.startPage}" end="${reviewList.endPage}" step="1">
                  
                     <c:if test="${i == reviewList.currentPage}">
                        <input class="button btn" type="button" value="${i}" disabled="disabled"/>
                     </c:if>
                     
                     <c:if test="${i != reviewList.currentPage}">
                        <input class="button btn"  type="button" value="${i}" id="page1" onclick="showReview(${i})" 
                           title="${i}페이지로 이동합니다."/>
                     </c:if>
                  </c:forEach>
                  </span>
                  <!-- 마지막으로, 10페이지 뒤로 -->
                  <c:if test="${reviewList.endPage < reviewList.totalPage}">
                     <input class="button btn" type="button" value=">" 
                           onclick="showReview()" title="다음 10 페이지로 이동합니다."/>
                     <input class="button btn" type="button" value=">>" 
                           onclick="showReview()" title="마지막 페이지로 이동합니다."/>
                  </c:if>            
                 
     
            

</div>
</div>

</body>
</html>