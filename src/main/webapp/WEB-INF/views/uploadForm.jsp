<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<style type="text/css">
select {
    width: 90px; /* 원하는 너비설정 */
    padding: .2em .3em; /* 여백으로 높이 설정 */
    font-family: inherit;  /* 폰트 상속 */
    border: 1px solid #999;
    -webkit-appearance: none; /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;
}

.input{
  width: 100%;
  padding: 6px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  border-bottom: 2px solid gray;
}

.btn {
   background-color: black;
   padding: 7px 50px;
   margin: 2px;
   border: none;
   color: black;
   text-align: center;
   text-decoration: none;
   font-size: 16px;
   display: inline-block;
   cursor: pointer;
   -webkit-transition-duration: 0.4s;
   transition-duration: 0.4s;
   color : white;
}
.btn1:hover{
   background-color: #8C8CBE;
   color: white;
}

.eaSize {border: 4px;}
</style>
<script type="text/javascript">
   
   function addSize() {
      
      var color = document.querySelector("#color").value
      
      var ho = document.createElement("div")
      
      ho.innerHTML = "<fieldset id='eaSize' style= 'border: 2px solid grey; width: 100; padding-top : 0px; padding-left: 5px;"
       +   "width: 100px;   height: 120px;'> " 
        + "<legend id='col' style='font-size:small; margin: 0px'>"
        + color + "</legend>"
         + "<input type='checkbox' value='S' name='item_Size' id='item_Size'/>S&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
         + "<input type='text' name='ea' style='width: 25px;' value='0'/>개<br>"
         + "<input type='checkbox' value='M' name='item_Size' id='item_Size'>M&nbsp;&nbsp;&nbsp;&nbsp;"
         + "<input type='text' name='ea' style='width: 25px;' value='0'/>개<br>"
         + "<input type='checkbox' value='L' name='item_Size' id='item_Size'>L&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
         + "<input type='text' name='ea' style='width: 25px;' value='0'/>개<br>"
         + "<input type='checkbox' value='XL' name='item_Size' id='item_Size'>XL&nbsp;&nbsp;&nbsp;"
         + "<input type='text' name='ea' style='width: 25px;'value='0'/>개"
         + "<input type='hidden' name='color' value='"+color+"'>"
        +"</fieldset>  ";
         var here = document.getElementById("here");
         here.appendChild(ho);
   }
   
   function addCategory() {
      var category = document.querySelector("#category").value
      var ho = document.createElement("div")
      if(category=="top"){
	      	ho.innerHTML = "<fieldset id='eaSize' style= 'border: 2px solid grey; width: 100; padding-top : 0px; padding-left: 5px;"
	        +   "width: 100px;   height: 150px;'> " 
	        + "<legend id='col' style='font-size:small; margin: 0px'>"
	        + category + "</legend>"
	        + "<input type='checkbox' value='맨투맨/후드' name='sub_Category' id='sub_Category'/>맨투맨/후드<br/>"
	        + "<input type='checkbox' value='니트' name='sub_Category' id='sub_Category'>니트<br/>"
	        + "<input type='checkbox' value='긴판티' name='sub_Category' id='sub_Category'>긴판티<br/>"
	        + "<input type='checkbox' value='반팔티' name='sub_Category' id='sub_Category'>반팔티<br/>"
	        + "<input type='checkbox' value='나시' name='sub_Category' id='sub_Category'>나시<br/>"
	        + "<input type='checkbox' value='프린팅티' name='sub_Category' id='sub_Category'>프린팅티<br/>"
	        +"</fieldset>  ";
	        var sub_Categoty = document.getElementById("sub_Categoty");
	        sub_Categoty.appendChild(ho);
       } else if(category=="bottom"){
	      	ho.innerHTML = "<fieldset id='eaSize' style= 'border: 2px solid grey; width: 100; padding-top : 0px; padding-left: 5px;"
	        +   "width: 100px;   height: 130px;'> " 
	        + "<legend id='col' style='font-size:small; margin: 0px'>"
	        + category + "</legend>"
	        + "<input type='checkbox' value='슬랙스' name='sub_Category' id='sub_Category'/>슬랙스<br/>"
	        + "<input type='checkbox' value='면바지' name='sub_Category' id='sub_Category'>면바지<br/>"
	        + "<input type='checkbox' value='청바지' name='sub_Category' id='sub_Category'>청바지<br/>"
	        + "<input type='checkbox' value='밴딩팬츠' name='sub_Category' id='sub_Category'>밴딩팬츠<br/>"
	        + "<input type='checkbox' value='반바지' name='sub_Category' id='sub_Category'>반바지<br/>"
	        +"</fieldset>  ";
	        var sub_Categoty = document.getElementById("sub_Categoty");
	        sub_Categoty.appendChild(ho);
       } else if(category=="acc"){
	      	ho.innerHTML = "<fieldset id='eaSize' style= 'border: 2px solid grey; width: 100; padding-top : 0px; padding-left: 5px;"
	        +   "width: 100px;   height: 130px;'> " 
	        + "<legend id='col' style='font-size:small; margin: 0px'>"
	        + category + "</legend>"
	        + "<input type='checkbox' value='모자' name='sub_Category' id='sub_Category'/>모자<br/>"
	        + "<input type='checkbox' value='양말' name='sub_Category' id='sub_Category'>양말<br/>"
	        + "<input type='checkbox' value='반지' name='sub_Category' id='sub_Category'>반지<br/>"
	        + "<input type='checkbox' value='목걸이' name='sub_Category' id='sub_Category'>목걸이<br/>"
	        + "<input type='checkbox' value='신발' name='sub_Category' id='sub_Category'>신발<br/>"
	        +"</fieldset>  ";
	        var sub_Categoty = document.getElementById("sub_Categoty");
	        sub_Categoty.appendChild(ho);
       } else{}
   }

   function checkUp(){
	   var mainfile= document.getElementById("main");
	   var subfile= document.getElementById("sub");
	   var name = document.getElementById("name").value;
	   var price = document.getElementById("price").value;
	   if(!mainfile.value){
		   alert("메인 사진을 업로드해야 합니다.");
		   return false;
	   }else if(!subfile.value){
		   alert("서브 사진을 업로드해야 합니다.");
		   return false; 
	   }else if(!name || name.trim().length == 0){
		   alert("상품명을 입력하세요.");
		   return false; 
	   }else if(!price || price.trim().length == 0){
		   alert("상품 가격을 입력하세요.");
		   return false; 
	   }
	   document.getElementById("form1").submit();
   }
   
</script>
<title>Insert title here</title>

</head>
<body>
<jsp:include page="item.jsp" flush="true"/>
   <!-- 가운대 틀 -->
   <div id="contents">
      <div class="sub_contents_inner">
         <div class="contents_inner">
            <!-- Center TOP -->
            <div id="hotItem">
                <h2 class="Title" style="font-family: font-family: 'Noto Sans JP', sans-serif;">상품 등록 </h2>
                     <div style="width: 60%; margin: auto;">
                     <form action="uploadForm" id="form1" method="POST" enctype="multipart/form-data" action="requestupload2">
                         <table>
                            <tr>
                                <td><input type="text" name="name" placeholder="상품 이름" class="input" id="name"/></td>
                            </tr>
                            <tr>    
                                <td><input type="text" name="price" placeholder="상품 가격" class="input" id="price"/></td>
                            </tr>
                            <tr><td><textarea placeholder="상품 설명" name="item_comment" style="resize: none" cols="75" rows="7"></textarea></td></tr>
                            <tr>    
                               <td>
                                <select id="color">
                                   <option value="black">블랙</option>
                                   <option value="white">화이트</option>
                                   <option value="blue">블루</option>
                                   <option value="gray">그레이</option>
                                   <option value="red">레드</option>
                                   <option value="sky">스카이</option>
                                </select>
                                <input type="button" onclick="addSize()" value="추가"/>
                                </td>
                              </tr>
                              <tr id ="here">  
                                
                             </tr>
                             
                             <tr>
                                <td> 
                                   <select name="category" id="category">
                                      <option>===카테고리===</option>
                                      <option value="top">상의</option>
                                      <option value="bottom">하의</option>
                                      <option value="acc">악세사리</option>
                                     </select>
                                     <input type="button" onclick="addCategory()" value="추가"/>
                                </td>
                             </tr>
                             <tr id ="sub_Categoty"> 
                                
                             </tr>
                              
                             <tr>
                                <td>
                                    메인 사진(단일)
                                   <input type="file" name="file" id="main"/>
                                </td>
                             </tr>
                             
                              <tr>
                                <td>
                                     서브 사진(다중)
                                   <input multiple="multiple" type="file" name="sub_file" id="sub"/>
                                </td>
                             </tr>
                             <input type="hidden" value="C:\leejinwon\SPRING\workspace\homeProject\src\main\webapp\resources\goodsupload" name="goodsDir">
                        </table>
                         <input type="button" value="전송" class="btn btn1" onclick="checkUp()"/>
                      </form>
                           <h6>저장된 상품이름 : ${ savedFileName }</h6>
               </div>
            </div>               
         </div>
         
      </div>
   </div>

</body>
</html>