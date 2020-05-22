<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://han3283.cafe24.com/js/lightslider/js/lightslider.js"></script>
    <!-- 로그인 폼 체크 함수 -->
	<script type="text/javascript">
		function checkForm(){
			var id = document.getElementsByName("id")[0];
			var password = document.getElementsByName("password")[0];
			var loginForm = document.loginForm;
			if(!id.value || id.value.trim().length==0){
				alert("아이디를 입력해주세요.");
				id.value="";
				id.focus();
				return false;
			}else if(!password.value || password.value.trim().length==0){
				alert("비밀번호를 입력해주세요.");
				password.value="";
				password.focus();
				return false;
			}
			loginForm.submit();
		}
		
		var loginRequest = new XMLHttpRequest();
		function loginCheck(){
			var id = document.getElementById("id").value;
			var password = document.getElementById("password").value;
			var url = "./loginOK?id="+encodeURIComponent(id)+"&password="+encodeURIComponent(password);
			loginRequest.open("POST",url ,true);
			loginRequest.send(null);
			loginRequest.onreadystatechange = resultCheck;
		}
		
		function resultCheck(){
			if(loginRequest.readyState == 4 && loginRequest.status == 200) {
				var object = eval("(" + loginRequest.responseText + ")");
				var result = object.result;
				var check = result[0].value;
				if(check == "fail"){
					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				}else{
					location.href="x685x23";
				}
			}
		}
	</script>
	
<style type="text/css">

table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin: auto;
  margin-top: 150px;
}


th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #ffb5b5;
  color: white;
}

input[type=text] , input[type=password]{
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
a{text-decoration: none}
.alink:link { text-decoration: none; text-shadow: 0 0 24px; color:black;} 
.alink:visited { text-decoration: none; text-shadow: 0 0 24px; color:black;} 
</style>

</head>
<body>
	<jsp:include page="item.jsp" flush="true"/>
	<div id="contents">
			<div class="sub_contents_inner">
				<div class="contents_inner">
					<!-- Center TOP -->
					<div id="hotItem">
	    <h2 class="Title" style="font-family: font-family: 'Noto Sans JP', sans-serif;">LOGIN</h2>
	    
	<!-- 로그인 폼 -->	
	<form action="loginOK" name="loginForm" method="post">
		<table>
			<tr><td align="center">
				<input type="text" name="id" style="width: 600px" placeholder="아이디" id="id"><br><br><br>
				<input type="password" name="password" style="width: 600px" placeholder="비밀번호" id="password"><br><br><br><br><br>
				<input type="button" value="로그인" onclick="loginCheck()" class="btn btn1"><br><br><br>
				<a href="join" class="alink">회원가입</a> &nbsp;&nbsp;|&nbsp;&nbsp;<a href="searchID" class="alink">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="searchPW" class="alink">비밀번호 찾기</a>  
			</td></tr>
		</table>
	</form>
	</div>
			</div></div></div>
			
</body>
</html>