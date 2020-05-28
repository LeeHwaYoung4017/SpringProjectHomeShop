<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>administrator</title>
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
					var input = document.createElement("span")
					 input.innerHTML ="<input type='text' value= '"+ result[i][j].value+"' name='ea' style='width : 20px'>"
						 cell.appendChild(input);
				}else if(j == 5){
					var btn = document.createElement("span")
					 btn.innerHTML ="<input type='button' value= '수정' style='width : 20px' onclick='update()'>"
						 cell.appendChild(btn);
					
				}else {
					
					cell.innerHTML = result[i][j].value;
				}
			}
		}
	}
}

function update() {
	
	var num = document.getElementsByName("ea").length;
	
	alert(num);
	
	
	
}

</script>




</head>
<body>
<jsp:include page="item3.jsp"/>

<div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner" align="center">
            <div align="right">
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
						<th style="background-color: #fafafa; text-align: center;">상품번호</th>
						<th style="background-color: #fafafa; text-align: center;">상품명</th>
						<th style="background-color: #fafafa; text-align: center;">색상</th>
						<th style="background-color: #fafafa; text-align: center;">사이즈</th>
						<th style="background-color: #fafafa; text-align: center;">수량</th>
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
</html>