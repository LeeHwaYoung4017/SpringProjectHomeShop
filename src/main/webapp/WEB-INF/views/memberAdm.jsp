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
	var url = "./AjaxSearch?name=" + encodeURIComponent(document.getElementById("userName").value)
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

//페이지가 로드되자마자 화면에 데이터가 보여야 하기 때문에 onload 이벤트에서 searchFunction() 함수를 실행한다.
onload = function() {
	searchFunction()
}


</script>

</head>
<body>
<jsp:include page="item3.jsp"/>

<div id="contents">
         <div class="sub_contents_inner">
            <div class="contents_inner" align="center">
            
            <div align="right">
				<input class="form-control" type="text" size="20" id="userName" onkeyup="searchFunction()"/>
			
				<button class="btn btn-primary" type="button" onclick="searchFunction()">검색</button>
			</div>
	
	
	<table class="table" align="center" style="text-align : center; border: 1px solid #dddddd">
		<thead>
			<tr>
				<th style="background-color: #fafafa; text-align: center;">이름</th>
				<th style="background-color: #fafafa; text-align: center;">ID</th>
				<th style="background-color: #fafafa; text-align: center;">E-MAIL</th>
				<th style="background-color: #fafafa; text-align: center;">번호</th>
				<th style="background-color: #fafafa; text-align: center;">주소</th>
				<th style="background-color: #fafafa; text-align: center;">생일</th>
				<th style="background-color: #fafafa; text-align: center;">성별</th>
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