<%@page import="com.training.pms.dao.LoginDAOImpl"%>
<%@page import="com.training.pms.dao.LoginDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.training.ers.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="styles.css">
</head>
<% String username = (String)session.getAttribute("username"); %>
<h2>You are logged in as : <%= username %> and the message is : <%= session.getAttribute("message") %></h2>
<body>
	<%
	LoginDAO loginDAO = new LoginDAOImpl();
	List<User> users = loginDAO.getUsers();
	Iterator<User> iterator = users.iterator();
	%>
	<h1>List of all the users</h1>
	<table border="2" cellspacing="10" cellpadding="10">
		<th>User Id</th>
		<th>User Name</th>
		<th>Password</th>
		<th>Gender</th>
		<th>Notifications</th>
		<th>Qualifications</th>
		<%
		while (iterator.hasNext()) {
			User user = iterator.next();
		%>
		<tr>
			<td><%=user.getUserId()%></td>
			<td><%=user.getUsername()%></td>
			<td><%=user.getPassword()%></td>
			<td><%=user.getGender()%></td>
			<td><%=user.getNotifications()%></td>
			<td><%=user.getQualification()%></td>
		</tr>
		<%
		}
		%>

	</table>
	<br/>
	<br/>
	<br/>
	<br/>
	<a href="index.jsp">Logout</a>
</body>
</html>