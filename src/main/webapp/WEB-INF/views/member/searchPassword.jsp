<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>
</head>
<body>
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
							<td colspan="2" align="center"><input type="submit" value="비밀번호 찾기"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>			
</body>
</html>