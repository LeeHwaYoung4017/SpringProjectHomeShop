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
	var url = "./revenue?startDate=" + encodeURIComponent(document.getElementById("dates").value)
			+ "&endDate=" + encodeURIComponent(document.getElementById("inputDate").value);
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
			for (var j = 0; j < result[i].length; j++) {
				var cell = row.insertCell(j);
				cell.innerHTML = result[i][j].value;
			}
		}

	}//if
}// searchProcess()




</script>
</head>
<body>
<jsp:include page="item3.jsp"/>

<div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner" align="center">
            	
            	<div>
            	시작 날짜 <input type="date" id="dates" ><br/>
				마지막 날짜 <input type="date" id="inputDate"/><br/>
            		<input type="button" value="확인" onclick="searchFunction()"/>
            	
            	</div>
            	
            	
            	<table class="table" align="center" style="text-align : center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #fafafa; text-align: center;">상품명</th>
						<th style="background-color: #fafafa; text-align: center;">ID</th>
						<th style="background-color: #fafafa; text-align: center;">수량</th>
						<th style="background-color: #fafafa; text-align: center;">사이즈</th>
						<th style="background-color: #fafafa; text-align: center;">색상</th>
						<th style="background-color: #fafafa; text-align: center;">날짜</th>
						<th style="background-color: #fafafa; text-align: center;">카테고리</th>
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