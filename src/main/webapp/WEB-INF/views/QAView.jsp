
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<style type="text/css">
   a { color: black; text-decoration: none; }
   .tbody tr:hover { color: white; font-weight: bold; background: purple; }

/* 내가 손댄 부분 */
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
}
table.type09 thead {
    padding: 10px;
    font-size: larger;
    font-weight: bold;
    vertical-align: top;
   background: lightgrey;
    border-bottom: 3px solid #036;
}
table.type09 tbody {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
   
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

.button{
 border: 2px solid #58D3F7;
 background-color: white;
 border-radius: 5px;
 border-width: medium;
 padding: 2px;
}

.btn{
  padding: 8px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  cursor: pointer;
}
 
</style>

</head>
<body>
<%
	String content = request.getParameter("vo.content");
%>
<jsp:include page="item.jsp" flush="true"/>
<!-- 가운대 틀 -->
<div id="contents">
   <div class="sub_contents_inner">
      <div class="contents_inner" align="center">
         <!-- Center TOP -->
         <div id="hotItem">
             <h2 class="Title" style="font-family: font-family: 'Noto Sans JP', sans-serif;">게시글 보기</h2>
               <form action="QAupdate" method="post">
               
               <input type="hidden" name="idx" value="${vo.idx}"/>
               <input type="hidden" name="currentPage" value="${currentPage}"/>
               <input type="hidden" name="content" value="${vo.content}"/>
               
               <table class="type09" width="500" align="center"  cellpadding="5" cellspacing="0">
                  <tr>
                     <td width="250" align="center" style="font-weight: bold; font-size: larger;">작성자</td>
                     <td width="250" align="center" style="font-weight: bold; font-size: larger;">작성일</td>
                  </tr>
                  <tr>
                           <td align="center" style="font-weight: bold; font-size: larger;">${vo.name }</td>
                           <td align="center" >
                              <fmt:formatDate value="${vo.writeDate}" pattern="yyyy/MM/dd(E) HH:mm"/>
                           </td>
                        </tr>
                        <tr>
                           <td align="center" style="font-weight: bold; font-size: larger;">제목</td>
                           <td>
                               ${vo.title}
                            </td>
                        </tr>
                        <tr>
                        	<td colspan="2" align="center"><img style="width: 200px; height: 200px;" src="${pageContext.request.contextPath }/resources/QAimage/${vo.attached}"/></td>
                        </tr>
                        <tr>
                           
                           <td colspan="2" align="center">
                              <div >
                              ${vo.content}
                              </div>
                           </td>
                        </tr>
                  <tr>
                     <td colspan="3" align="center">
                        <input type="submit"  class="btn btn-info" value="수정하기" />
                        <input type="button" class="btn btn-info" value="삭제하기" onclick="location.href='QAdelete?idx=${vo.idx}&currentPage=${currentPage}'"/>
                        <input type="button"  class="btn btn-info" value="돌아가기" onclick="location.href='QAlist?currentPage=${currentPage}'"/>
                     </td>
                  </tr>
               </table>
               </form>

         </div>               
      </div>
      
   </div>
</div>
</body>
</html>