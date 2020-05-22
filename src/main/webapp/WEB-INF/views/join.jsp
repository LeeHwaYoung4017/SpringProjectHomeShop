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
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
    <!-- 로그인 폼 체크 함수 -->
	<script type="text/javascript">
	function formCheck(){
		var joinForm = document.joinForm;
		var id = joinForm.id.value;
		var id_check = document.getElementById("idcheck");
		var pw = joinForm.pw.value;
		var pw_check = document.getElementById("pwcheck");
		var pw_c = joinForm.password_c.value;
		var email = joinForm.email.value;
		var phone = joinForm.phone.value;
		var gender = joinForm.gender.value;
		var year = joinForm.year.value;
		var month = joinForm.month.value;
		var day = joinForm.day.value;
		var addr = joinForm.addr.value;
		var name = joinForm.name.value;
		var check = document.getElementById("agree");
		
		if(!id || id.trim().length == 0){
			alert("아이디를 입력해주세요");
			joinForm.id.value="";
			joinForm.id.focus();
			return false;
		}else if(id_check.value != "ok"){
			alert("사용할 수 없는 아이디 입니다.");
			joinForm.id.value="";
			joinForm.id.focus();
			return false;
		}else if(!pw || pw.trim().length <= 7){
			alert("패스워드는 8자 이상 입력하셔야 합니다.");
			joinForm.pw.value="";
			joinForm.pw.focus();
			return false;
		}else if(pw != pw_c){
			alert("비밀번호 확인이 일치하지 않습니다.");
			joinForm.pw.value="";
			joinForm.pw.focus();
			return false;
		}else if(pw_check.value != "ok"){
			alert("사용할 수 없는 비밀번호 입니다.");
			joinForm.pw.value="";
			joinForm.pw.focus();
			return false;
		}else if(!email || email.trim().length == 0){
			alert("이메일을 입력해주세요.");
			joinForm.email.value="";
			joinForm.email.focus();
			return false;
		}else if(!phone || phone.trim().length == 0){
			alert("휴대폰 번호를 입력해주세요.");
			joinForm.phone.value="";
			joinForm.phone.focus();
			return false;
		}else if(!gender || gender.trim().length == 0){
			alert("성별을 선택해주세요");
			return false;
		}else if(year=="월" || month=="월" || day=="일"){
			alert("생년월일을 선택해주세요");
			return false;
		}else if(!addr || addr.trim().length == 0){
			alert("주소를 입력해주세요");
			joinForm.addr.focus();
			return false;
		}else if(!name || name.trim().length == 0){
			alert("이름을 입력해주세요");
			joinForm.name.value="";
			joinForm.name.focus();
			return false;
		}else if(!check.checked){
			alert("동의 사항을 체크해주세요.");
			check.focus();
			return false;
		}
		alert("회원가입을 축하드립니다.");
		joinForm.submit();	
	}
	
	var idRequest = new XMLHttpRequest();
	function checkID(){
		var div = document.getElementById("id_c");
		var id = document.getElementById("id").value;

		if(!id || id.trim().length < 6 || id.trim().length > 15 || id.search(/\s/) != -1){
			$("#id_c").css("color", "balck");
			div.innerHTML = "아이디는 6~15자리 영문자, 숫자로만 작성해주세요.";
		}else{
			var url = "./checkID?id="+ encodeURIComponent(id);
			idRequest.open("POST",url ,true);
			idRequest.send(null);
			idRequest.onreadystatechange = checkIdResponse;
		}
	}
	
	function checkIdResponse(){
		if(idRequest.readyState == 4 && idRequest.status == 200) {
			var object = eval("(" + idRequest.responseText + ")");
			var result = object.result;
			var check = result[0].value;
			var div = document.getElementById("id_c");
			var id_check = document.getElementById("idcheck");
			if(check=="OK"){
				$("#id_c").css("color", "blue");
				id_check.value = "ok";
				div.innerHTML = "사용가능한 아이디 입니다.";
			}else{
				$("#id_c").css("color", "red");
				div.innerHTML = "이미 사용중인 아이디 입니다.";
			}
		}
	}
	
	function goPopup(){
	   var url = "jusoPopup";
	   var title = "pop";
	   var option = "width=570,height=420, scrollbars=yes, resizable=yes";
	   window.open(url,title,option);
	}
	
	function checkPW(){
		var div = document.getElementById("pw_c");
		var pw = document.getElementById("pw").value;
		var num = pw.search(/[0-9]/g);
		var eng = pw.search(/[a-z]/ig);
		var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		var pw_check = document.getElementById("pwcheck");
		if(!pw || pw.trim().length < 8 || pw.trim().length > 20 || pw.search(/\s/) != -1){
			$("#pw_c").css("color", "red");
			div.innerHTML = "비밀번호는 공백 없이 8자리 이상 20자리 이하로 작성해주세요.";
		}else if(num < 0 || eng < 0 || spe < 0 ){
			$("#pw_c").css("color", "red");
			div.innerHTML = "영문,숫자, 특수문자를 혼합하여 입력해주세요.";
		}else{
			$("#pw_c").css("color", "blue");
			pw_check.value="ok";
			div.innerHTML = "사용 가능한 비밀번호 입니다.";
		}
	}
	</script>
<style type="text/css">

table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin: auto;
  margin-bottom: 25px;
}

td, th {
    border: 1px solid gray;
 	 padding: 8px;
}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #ffb5b5;
  color: white;
}

select {
    width: 150px; /* 원하는 너비설정 */
    padding: .2em .3em; /* 여백으로 높이 설정 */
    font-family: inherit;  /* 폰트 상속 */
    border: 1px solid #999;
    -webkit-appearance: none; /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;
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

li{list-style: none; font-family: font-family: 'Noto Sans JP', sans-serif; font-size: 30px;}
a{text-decoration: none}
.alink:link { text-decoration: none; text-shadow: 0 0 24px; color:black;} 
.alink:visited { text-decoration: none; text-shadow: 0 0 24px; color:black;} 
#id_c, #pw_c{font-size: 12px;}
</style>

</head>
<body>
		<jsp:include page="item.jsp" flush="true"/>
		<!-- 가운대 틀 -->
		<div id="contents">
			<div class="sub_contents_inner">
				<div class="contents_inner">
					<!-- Center TOP -->
					<div id="hotItem">
					    <h2 class="Title" style="font-family: font-family: 'Noto Sans JP', sans-serif;">회원가입</h2>
					    
						<div id="div1">
	
							<form action="joinOK" method="post" name="joinForm" align="center">
								<table width="700" cellpadding="0" cellspacing="8"> 
									<tr>
										<td align="center"><input type="text" name="id" id="id" style="width: 600px" onkeyup="checkID()"placeholder="아이디">
										<br><div id="id_c"></div>
										<input type="hidden" id="idcheck" value="not"/>
										</td>
									<tr>
										<td align="center"><input type="password" name="pw" id="pw" style="width: 600px" placeholder="비밀번호" onkeyup="checkPW()">
										<br><div id="pw_c"></div>
										<input type="hidden" id="pwcheck" value="not"/>
										</td>
									</tr>
									
									<tr>
										<td align="center"><input type="password" name="password_c" id="password_c" style="width: 600px" placeholder="비밀번호 확인"></td>
									</tr>
									
									<tr>
										<td align="center"><input type="text" name="name" id="name" style="width: 600px" placeholder="이름"></td>
									</tr>
									
									<tr>
										<td align="center"><input type="text" name="email" id="email" style="width: 600px" placeholder="이메일"></td>
									</tr>
									
									<tr>
										<td align="center"><input type="text" name="phone" id="phone" style="width: 600px" placeholder="핸드폰번호"></td>
									</tr>
									<tr>
										<td align="center"><input type="text" name="addr" placeholder="주소검색" readonly="readonly" onclick="goPopup()"></td>				
									</tr>
									<tr>
										<td align="center">
											<select id="year" name="year">
												<option>생년</option>
												<c:forEach var="i" begin="1970" end="2020">
													<option value="${i}">${i}</option>
												</c:forEach>
											</select>
											
											<select id="month" name="month">
												<option>월</option>
												<c:forEach var="i" begin="1" end="12">
													<option value="${i}">${i}</option>
												</c:forEach>
											</select>
											
											<select id="day" name="day">
												<option>일</option>
												<c:forEach var="i" begin="1" end="31">
													<option value="${i}">${i}</option>
												</c:forEach>
											</select>
										</td>
									</tr>
									
									<tr>
										<td align="center" colspan="2">
											    <input type="radio" id="m" name="gender" value="m">
											    <label for="m">남자</label> &nbsp;&nbsp;&nbsp;
											    <input type="radio" id="w" name="gender" value="w">
											    <label for="w">여자</label> 
											    <input type="hidden" name="ip" value="${pageContext.request.remoteAddr}">
										</td>
									</tr>
									</table>
									<input type="checkbox" value="agree" id="agree">14세 이상입니다.(필수)<br>
									고객님의 개인정보 수집을 최소화하고 편리한 회원가입을 제공합니다.	
									<br><br>
									
									<input type="button" value="동의하고 가입하기" onclick="return formCheck()" class="btn btn1">
										  </form> 	
					</div>					
				</div>
			</div>
		</div>
	</div>
</body>
</html>