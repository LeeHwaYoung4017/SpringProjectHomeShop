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
</head>
<body>
<h1>Hello</h1>

			 <table width="700" cellpadding="0" cellspacing="8">
	                  	<caption>주문내역</caption>
	                  	<tr>
							<td width="400">상품</td>
							<td width="100">판매가</td>
							<td width="50">수량</td>
							
							<td width="150">TOTAL</td>
						</tr>
						<c:set var="totalEa" value="0"/>
						<c:set var="totalPrice" value="0"/>
						<c:forEach var="vo" items="${statusList}">
								<tr align="left">
								<td width="150">OMOM</td>
									<td><img onload="resize(this)" src="${pageContext.request.contextPath }/resources/goodsupload/goodsupload_${vo.category}/${vo.id_number}">
										${vo.item_name}(${vo.color},${vo.size},${vo.ea})</td>
									<td>${(vo.price)*(vo.ea)}</td>
									<td>${vo.ea}</td>
									<td><c:set var="total" value="${(vo.price)*(vo.ea)+2500}"/>${total}</td>
								</tr>
					   </c:forEach>
	                  </table>
</body>
</html>