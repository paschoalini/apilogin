<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First Web Application</title>
</head>

<body>

    Your Name is : ${name}
    <BR/>
    Here are the list of your todos:
    <BR/>
    <BR/>
    <table>
    	<c:forEach var="dados" items="${todos}">
    	<tr>
    		<td><c:out value="${dados.id}"/></td>
    		<td><c:out value="${dados.desc}"/></td>
    		<td>
    		<c:if test="${dados.done}">Done</c:if>
    		<c:if test="${!dados.done}">To do</c:if>
    		</td>
    		<td><fmt:formatDate pattern="dd/MM/yyyy" value="${dados.targetDate}"/></td>
    		<td><c:out value="${dados.user}"/></td>
    	</tr>
    	</c:forEach>
    </table>
</body>

</html>