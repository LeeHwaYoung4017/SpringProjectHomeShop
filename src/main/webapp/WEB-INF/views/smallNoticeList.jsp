<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" cellpadding="5" cellspacing="0" class="type09">
               <thead>
               
               <tr>
                  <td width="620" align="center">제목</td>
                  <td width="120" align="center">작성일</td>
               </tr>
               </thead>
               
               <tbody class="tbody">
               <!-- request 영역의 noticeList 객체에서 1페이지 분량의 글이 저장된 ArrayList(noticeList)의 내용만 얻어내서 별도의 변수에 저장한다. -->
               <c:set var="list" value="${noticeList.noticeList}"/>
               
               <!-- 테이블에 글이 없으면 없다고 출력한다. -->
               <c:if test="${list.size() == 0}">
               <tr>
                  <td colspan="4" align="center">테이블에 저장된 글이 없습니다.</td>
               </tr>
               </c:if>
               
               <!-- 테이블에 글이 있으면 화면에 출력할 글의 개수 만큼 반복하며 글을 출력한다. -->
               <c:if test="${list.size() != 0}">
               
               <!-- 컴퓨터 시스템의 현재 날짜와 시간을 기억하는 Date 클래스 객체를 만든다. -->
               <jsp:useBean id="date" class="java.util.Date"/>
               
               <c:forEach var="vo" items="${list}">
               <tr>
                  <td>
                     
                     <!-- 오늘 입력된 글은 new를 표시한다. -->
                     <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
                        <img src="${pageContext.request.contextPath }/resources/images/new.png"/>
                     </c:if>
                     
                     <c:set var="title" value="${fn:replace(fn:trim(vo.title), '<', '&lt;')}"/>
                     <c:set var="title" value="${fn:replace(title, '>', '&gt;')}"/>
                     <!-- 제목에 하이퍼링크를 걸어준다. => 하이퍼링크를 클릭하면 클릭된 글의 내용을 표시한다. -->
                     <a href="contentView?idx=${vo.idx}&currentPage=${noticeList.currentPage}">
                        ${title}
                     </a>
                     
                     
                  </td>
                  <td align="center">
                     <!-- 오늘 입력된 글은 시간만 어제 이전에 입력된 글은 날짜만 표시한다. -->
                     <c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date}">
                        <fmt:formatDate value="${vo.writeDate}" pattern="a h:mm"/>
                     </c:if>
                     <c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month || date.date != vo.writeDate.date}">
                        <fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd"/>
                     </c:if>
                  </td>
               </tr>
               </c:forEach>
               </c:if>
               </tbody>
            </table>
</body>
</html>