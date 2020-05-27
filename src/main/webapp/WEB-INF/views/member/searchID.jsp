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
.NewTitle{
   text-align: center;
   font-weight: normal;
   letter-spacing: 10px;
   margin-bottom: 40px;
}
table{margin: auto; margin-top: 150px; width: 300px;}
input[type=text]{
  border : none;
  width:100%;
  padding: 2px 1px;
  margin: 8px 0;
  box-sizing: border-box;
  border-bottom: 2px solid gray;
}
#result{font-size: 12px; color: blue;}
#myp{font-size: 15px;}
</style>
<script type="text/javascript">
var searchIDRequest = new XMLHttpRequest();
function searchID(){
	var name = document.getElementById("name").value;
	var email = document.getElementById("email").value;
	var url="./selectID?name="+encodeURIComponent(name) + "&email="+encodeURIComponent(email);
	searchIDRequest.open("POST",url ,true);
	searchIDRequest.send(null);
	searchIDRequest.onreadystatechange = selectResponse;
}

function selectResponse(){
	if(searchIDRequest.readyState == 4 && searchIDRequest.status == 200) {
		var object = eval("(" + searchIDRequest.responseText + ")");
		var result = object.result;
		var id = result[0][0].value;
		var resultID = document.getElementById("resultID");
		resultID.innerHTML = "<p id='myp'>고객님의 아이디는 <strong>"+id+"</strong> 입니다. </p><br>";
	}
}
</script>
</head>
<body>
<jsp:include page="../item.jsp"/>
<div id="contents">
	<div class="sub_contents_inner">
		<div class="contents_inner">
			<div id="hotItem">
			   <h2 class="NewTitle" style="font-family: font-family: 'Noto Sans JP', sans-serif;">아이디 찾기</h2>
					<table>
						<tr>
							<td><p class="myp">이름</p></td>
							<td><input type="text" id="name"></td>
						</tr>
						<tr>
							<td><p class="myp">이메일</p></td>
							<td><input type="text" id="email"></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</tr>
						<tr><td><br></td></tr>
						<tr>
							<td colspan="2" align="center"><input type="button" value="아이디 찾기" onclick="searchID()">
															<input type="button" value="돌아가기" onclick="location.href='history.back()'"></td>
						</tr>
						<tr><td><br></td></tr>
						<tr><td colspan="2" align="center"><span id="resultID"></span></td></tr>
					</table>
			</div>
		</div>
	</div>
</div>			
</body>
</html>