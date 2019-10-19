<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><a href="index.jsp">Add More Product</a></h1>

	<%
		Cookie cookie[] = request.getCookies();
	%>
	<table border="1">
		<tr>
			<th>Serial No.</th>
			<th>Product Name</th>
			<th>Product Price</th>
		</tr>
		<% for(int i=0; i<cookie.length; i++){
			Cookie ck = cookie[i];
			%>
		<tr>
			<td><%=i%></td>
			<td><%= ck.getName() %></td>
			<td><%= ck.getValue() %></td>
			<td>
			<form action="OneServlet">
				<button type="submit" name="delete" value="<%=i%>">Delete</button>
				</form>
			</td>
		</tr>
		<%} //end loop %>
	</table>
</body>
</html>