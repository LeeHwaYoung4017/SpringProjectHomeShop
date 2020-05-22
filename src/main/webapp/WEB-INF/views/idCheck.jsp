<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕하세요</title>
<style type="text/css">
p1{
	color : blue;
}
p{
	color : red;
}
</style>
<script type="text/javascript">

	function pValue(){
		document.getElementById("userId").value = opener.document.joinForm.id.value;
	}
	
	function okid(){
		var id = document.getElementById("userId").value;
		if(id.trim().length < 8 ){
			alert("아이디는 8글자 이상 입력해주세요.");
			checkForm.userId.value="";
			checkForm.userId.focus();
			return false;
		}else if((id < "0" || id > "9") && (id < "a" || id > "z") && (id < "A" || id > "Z")){
			alert("아이디는 한글 또는 특수문자는 입력이 불가능 합니다.");
			checkForm.userId.value="";
			checkForm.userId.focus();
			return false;
		}
		return true;
	}
	
	function inputchID(){
		document.checkForm.checkR.value="not";
	}
	
	function sendCheckValue(){
		if(document.checkForm.checkR.value=="not"){
			alert("사용할 수 없는 아이디 입니다.");
			checkForm.userId.value="";
			checkForm.userId.focus();
		}else{
			opener.document.joinForm.id.value=document.checkForm.userId.value;
			opener.document.joinForm.check.value="ok";
			window.close();
		}
	}
</script>

</head>
<body>

<div id="wrap">
	<form action="check" method="post" onsubmit="return okid()" name="checkForm">
		<br>
		<b><font size="4" color="4">아이디 중복확인</font></b>

		<input type="text" name="userId" id="userId" onkeydown="inputchID()" value="${lastId}"/>
		<input type="submit" value="중복확인">
	<br>
	
	<c:if test="${flag == true}">
		<br>
			<p1>사용 가능한 ID입니다.</p1>
			<input type="hidden" name="checkR" value="ok">	
		<br><br>
	</c:if>
	
	<c:if test="${flag == false}">
		<p>사용할 수 없는 ID입니다.</p>	
		<input type="hidden" name="checkR" value="not">
	</c:if>
	</form>
	<br>
	<input type="button" value="돌아가기" onclick="window.close()">
	<input type="button" value="사용하기" onclick="return sendCheckValue()">
</div>

</body>
</html>