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
</style>
</head>
<body>
<c:if test="${result eq 'fail'}">
	<script type="text/javascript"> alert("일치하는 회원 정보가 없습니다."); </script>
</c:if>
<jsp:include page="../item.jsp"/>
<div id="contents">
	<div class="sub_contents_inner">
		<div class="contents_inner">
			<div id="hotItem">
			   <h2 class="NewTitle" style="font-family: font-family: 'Noto Sans JP', sans-serif;">비밀번호 찾기</h2>
			   	<form action="search_pw" method="post">
					<table>
						<tr>
							<td><p class="myp">아이디</p></td>
							<td><input type="text" name="id" ></td>
						</tr>
						<tr>
							<td><p class="myp">이름</p></td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td><p class="myp">이메일</p></td>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</tr>
						<tr><td><br></td></tr>
						<tr>
							<td colspan="2" align="center"><input type="submit" value="비밀번호 찾기">
															<input type="button" value="돌아가기" onclick="location.href='history.back()'"></td>
						</tr>
						
						<c:if test="${result eq 'success'}">
							<tr>
								<td colspan="2" align="center">
								<p id="result">회원님의 이메일로 임시비밀번호를 전송했습니다.<br>
													전송된 임시 비밀번호를 통해 로그인해주세요.</p><br>
								<input type="button" value="로그인하기" onclick="location.href='login'"></td>
							</tr>
						</c:if>
						
					</table>
				</form>
			</div>
		</div>
	</div>
</div>			
</body>
</html>