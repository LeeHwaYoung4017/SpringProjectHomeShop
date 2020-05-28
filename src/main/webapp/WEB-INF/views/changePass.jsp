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
    
    <!-- 비밀번호 폼 체크 함수 -->
	<script type="text/javascript">
	
	function formCheck(){
		var ids = pwForm.ids.value;
		var pw = pwForm.pw.value;
		var pw1 = pwForm.repw1.value;
		var pw_check = document.getElementById("pwcheck");
		var pw_c = pwForm.password_c.value;
		var check = document.getElementById("agree");
		if(pw == pw1){
			alert("기존 비밀번호와 일치합니다.");
			pwForm.pw.value="";
			pwForm.pw.focus();
			return false;
		}else if(!pw || pw.trim().length <= 7){
			alert("패스워드는 8자 이상 입력하셔야 합니다.");
			pwForm.pw.value="";
			pwForm.pw.focus();
			return false;
		}else if(pw != pw_c){
			alert("비밀번호 확인이 일치하지 않습니다.");
			pwForm.pw.value="";
			pwForm.pw.focus();
			return false;
		}else if(pw_check.value != "ok"){
			alert("사용할 수 없는 비밀번호 입니다.");
			pwForm.pw.value="";
			pwForm.pw.focus();
			return false;
		}
		alert("비밀번호가 변경되었습니다.");
		self.close();
		pwForm.submit();
	}
	
	// 기존 비밀번호가 일치하는지 확인
	function reCheckPW(){
		var div = document.getElementById("pw_ck");
		var pw = document.getElementById("repw").value;
		var pw1 = document.getElementById("repw1").value;
		if(pw1!=pw){
			$("#pw_ck").css("color", "red");
			div.innerHTML = "기존 비밀번호가 일치하지 않습니다.";
		} else if(pw1==pw){
			$("#pw_ck").css("color", "blue");
			div.innerHTML = "기존 비밀번호가 일치합니다";
		}
	}
	
	function checkPW(){
		var div = document.getElementById("pw_c");
		var pw = document.getElementById("pw").value;
		var pw1 = document.getElementById("repw1").value;
		var num = pw.search(/[0-9]/g);
		var eng = pw.search(/[a-z]/ig);
		var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		var pw_check = document.getElementById("pwcheck");
		if(pw==pw1){
			$("#pw_c").css("color", "red");
			div.innerHTML = "기존 비밀번호와 일치합니다.";
		}else if(!pw || pw.trim().length < 8 || pw.trim().length > 20 || pw.search(/\s/) != -1){
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
#id_c, #pw_c, #pw_ck{font-size: 12px;}
</style>

</head>
<body>
	<div id="contents">
		<div class="sub_contents_inner">
			<div class="contents_inner">
				<!-- Center TOP -->
				<div id="hotItem">
					<h2 class="Title" style="font-family: font-family : 'Noto Sans JP', sans-serif;" align="center">비밀번호 변경</h2>
					<div id="div1">
						<form action="changePassOK" method="post" name="pwForm" align="center">
							<table width="700" cellpadding="0" cellspacing="8">
								<tr>
									<td align="center">
										<input type="hidden" value="${vo.id}" name="ids" id="ids">
										<input type="hidden" value="${vo.pw}" name="repw1" id="repw1">
										<input type="password" name="repw" id="repw" style="width: 600px" placeholder="기존 비밀번호" onkeyup="reCheckPW()"><br>
										<div id="pw_ck"></div>
									</td>
								</tr>
								<tr>
									<td align="center">
										<input type="password" name="pw" id="pw" style="width: 600px" placeholder="변경할 비밀번호" onkeyup="checkPW()"><br>
										<div id="pw_c"></div> 
										<input type="hidden" id="pwcheck" value="not"/>
									</td>
								</tr>

								<tr>
									<td align="center">
										<input type="password" name="password_c" id="password_c" style="width: 600px" placeholder="비밀번호 확인">
									</td>
								</tr>
							</table>
							<input type="button" value="변경하기" onclick="return formCheck()" class="btn btn1">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>