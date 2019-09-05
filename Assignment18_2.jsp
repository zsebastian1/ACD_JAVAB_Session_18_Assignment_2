<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Assignment18_2.jsp">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value=""></td>
			</tr>
			<tr>
				<td>Age:</td>
				<td><input type="text" name="age" value=""></td>
			</tr>
			<tr>
				<td><input type="submit" value="Generate"></td>
			</tr>
		</table>
	</form>
	<br>
	<%
		String name = request.getParameter("name");
		String sage = request.getParameter("age");
		if (name == null && sage == null) {
			//when page is first loaded
		} else if (name.length() == 0 || sage.length() == 0) {
			//when a field is left blank
	%>
	<b>A field was left empty!</b>
	<%
		} else {
			int age = Integer.valueOf(sage);
	%>
	<b>Your name is <%=name%>.
	</b>
	<b>Your age is <%=age%></b>
	<br />
	<%
		if (age > 65) {
	%>
	<b>Your ticket price is $7.00</b>
	<%
		} else if (age < 10) {
	%>
	<b>Your ticket price is $5.00</b>
	<%
		} else {
	%>
	<b>Your ticket price is $9.50</b>
	<%
		}
		}
	%>

</body>
</html>