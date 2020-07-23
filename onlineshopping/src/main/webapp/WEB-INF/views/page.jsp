<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Get the context root of the project -->
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!-- Load the static resources -->
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">


<title>Online Shopping - ${title}</title>

<script type="text/javascript">
	window.menu = '${title}';
</script>


<!-- Bootstrap core CSS -->
<link href="${css}/READ_BOOTSTRAP_THEME.css" rel="stylesheet">

<!-- Readable Bootstrap THEME CSS -->
<link href="${css}/READ_BOOTSTRAP_THEME.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- Section one: Navbar -->
		<%@include file="./shared/navbar.jsp"%>

		<!--******************* END Section - Navbar ******************************-->

		<div class="content">

			<!-- Section two: Home Page -->
			<c:if test="${userClickHome == true}">
				<%@include file="./home.jsp"%>
			</c:if>

			<!--******************* END Section - Home Page ******************************-->

			<!-- Section three: About Page -->
			<c:if test="${userClickAbout == true}">
				<%@include file="./about.jsp"%>
			</c:if>

			<!--******************* END Section - About Page ******************************-->

			<!-- Section four: Contact Page -->
			<c:if test="${userClickContact == true}">
				<%@include file="./contact.jsp"%>
			</c:if>

			<!--******************* END Section - Contact Page ******************************-->
		</div>

		<!-- Section: Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!--******************* END Section - Footer ******************************-->



		<!-- JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.js"></script>
		<script type="text/javascript" src="${js}/myapp.js"></script>
	</div>
</body>

</html>
