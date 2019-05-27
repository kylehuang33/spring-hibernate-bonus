<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Custom Login Page</title>
	
	<style>
		.failed{
			color: red;
		}
	</style>
</head>
<body>
	<h2>My Custom Login Page</h2>

	
		<c:if test="${param.error != null }">
			<i class="failed">Sorry! You entered invalid username/password.</i>
		</c:if>
	
	<form:form action="${pageContext.request.contextPath }/authenticateTheUser" method="POST">
	
		<p>
			User name: <input type="text" name="username" />
		</p>
		<p>
			Password: <input type="password" name="password" />
		</p>
	
		<input type="submit" value="Login" />
	</form:form>

</body>


</html>