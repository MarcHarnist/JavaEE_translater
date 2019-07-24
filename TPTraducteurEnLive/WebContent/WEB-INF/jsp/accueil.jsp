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

<h1>
	<fmt:message key="msg_title" bundle="${application }"></fmt:message>
</h1>

<p>
	<fmt:message key="msg_name" bundle="${application }"></fmt:message>
</p>

<form method="post" action="${pageContext.request.contextPath}/ServletAccueil">
	<input type="text" name="name">
	<input type="submit" value="<fmt:message key="msg_validate" bundle="${application }"></fmt:message>">
</form>
</body>
</html>