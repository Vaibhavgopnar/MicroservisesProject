<%@page import="com.ticketbooking.admin.model.Admin"%>
<%@page import="com.ticketbooking.connection.ConnectionDB"%>

<%
Admin admin = (Admin) session.getAttribute("loggedAdmin");
if (admin == null) {
	response.sendRedirect("adminlogin.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Heading</h1>

	<%=admin.getName()%>
</body>
</html>