<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>administrator</title>
<style type="text/css">
th, td {
    border: 1px solid #cababa;
  }
  
 th{
 background-color: #d8d8d8;
 text-align: center;
  width: 100px;
 }  
</style>

<script type="text/javascript">
var searchRequest = new XMLHttpRequest();

function searchFunction() {
	var url = "./stockList?category=" + encodeURIComponent(document.getElementById("category").value);
	searchRequest.open("post",url,true);
	searchRequest.onreadystatechange = searchProcess;
	searchRequest.send(null);
}

function searchProcess() {

	if(searchRequest.readyState == 4 && searchRequest.status == 200) {
		
		var table = document.getElementById("ajaxTable");
		table.innerHTML = "";
		
		var object = eval("(" + searchRequest.responseText + ")");	
		var result = object.result;

		for (var i = 0; i < result.length; i++) {
			var row = table.insertRow(0);
			for (var j = 0; j < result[i].length+1; j++) {
				
					var cell = row.insertCell(j);
				if(j == 4){
					 cell.innerHTML ="<input type='text' value= '"+ result[i][j].value+"' name='ea"+[i]+"' style='width : 20px'>"
				}else if(j == 5){
					cell.innerHTML ="<input type='button' value= '수정' name='ea"+[i]+"' style='width : 40px' onclick='update(this)'>"
					
				}else {
					cell.innerHTML = result[i][j].value;
				}
			}
		}
	}
}

function update(fmt) {
	
	var getName= fmt.getAttribute('name');
	var ea = document.getElementsByName(getName)[0].value;/* 바뀐 수량의 값 */
	var obj = fmt.parentNode.parentNode;/* tr태그 */
	var idx = obj.childNodes[0].childNodes[0].nodeValue;
	var color = obj.childNodes[2].childNodes[0].nodeValue;
	var size = obj.childNodes[3].childNodes[0].nodeValue;
	
	if (confirm("수정하시겠습니까?") == true){    //확인

	    var url = "./updateStock?volume=" + encodeURIComponent(ea)
	    		+ "&idx=" + encodeURIComponent(idx)
	    		+ "&color=" + encodeURIComponent(color)
	    		+ "&size=" + encodeURIComponent(size);
		searchRequest.open("post",url,true);
		searchRequest.onreadystatechange = insertProcess;
		searchRequest.send(null);

	}else{   //취소

	    return;

	}
	
	
}

function insertProcess(){
	   if(searchRequest.readyState == 4 && searchRequest.status == 200) {
	            
	      var result = searchRequest.responseText;
	      if(result == 0) {
	         alert("저장실패!!!");
	      } else {
	        alert("수정성공!!");
	        
	         searchFunction();
	      }
	   }
	}

</script>




</head>
<body>
<jsp:include page="item3.jsp"/>

<div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner" align="center">
            <div align="right">
            <form id="stock" action="updateStock?idx=${idx}" method="post" enctype="multipart/form-data" >
            	 <select id="category" onchange="searchFunction()">
                    <option value ="1">--카테고리 선택--</option>
                        <option value="TOP">TOP</option>
                        <option value="BOTTOM">BOTTOM</option>
                        <option value="ACC">ACC</option>	
               </select>
              </div> 
              <table class="table" align="center" style="text-align : center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th>상품번호</th>
						<th>상품명</th>
						<th>색상</th>
						<th>사이즈</th>
						<th>수량</th>
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
				</thead>
				<tbody id="ajaxTable">
					<tr>
						
					</tr>
				
					</tbody>		
				</table>
              
            </div>
         </div>
</div>   
</body>
