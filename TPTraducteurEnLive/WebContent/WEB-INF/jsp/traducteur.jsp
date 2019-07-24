<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:setBundle basename="messages.application" var="application"/>
	<h3><fmt:message key="msg_title" bundle="${application }"></fmt:message></h3>

	<p>
		<fmt:message key="msg_hello" bundle="${application }">
			<fmt:param value="${ sessionScope.name }"></fmt:param>
		</fmt:message>
	</p>
	
	<form method="post" action="${pageContext.request.contextPath}/ServletChangerLangue">
	
	<select name="langue_initiale" onchange="submit();">
		<option value="fr" ${ requestScope.langueInitiale=='fr' ? 'selected' : '' }>Français</option>
		<option value="en" ${ requestScope.langueInitiale=='en' ? 'selected' : '' }>English</option>
		<option value="es" ${ requestScope.langueInitiale=='es' ? 'selected' : '' }>Español</option>
	</select>
	
	<select name="langue_cible" onchange="submit();">
		<option value="fr" ${ requestScope.langueCible=='fr' ? 'selected' : '' }>Français</option>
		<option value="en" ${ requestScope.langueCible=='en' ? 'selected' : '' }>English</option>
		<option value="es" ${ requestScope.langueCible=='es' ? 'selected' : '' }>Español</option>
	</select>
	
	</form>

	<fmt:setLocale value="${requestScope.langueInitiale }"/>	
	<fmt:setBundle basename="messages.traducteur" var="traducteur_initial"/>
	
	<fmt:setLocale value="${requestScope.langueCible }"/>	
	<fmt:setBundle basename="messages.traducteur" var="traducteur_cible"/>
	
	<table>
		<thead>
			<tr>
				<td><fmt:message key="msg_initial" bundle="${ application }"></fmt:message></td>
				<td><fmt:message key="msg_aim" bundle="${ application }"></fmt:message></td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="key" items="${ traducteur_initial.getResourceBundle().getKeys() }">
			<tr>
				<td><fmt:message key="${key }" bundle="${ traducteur_initial }"></fmt:message>
				<td><fmt:message key="${key }" bundle="${ traducteur_cible }"></fmt:message>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>