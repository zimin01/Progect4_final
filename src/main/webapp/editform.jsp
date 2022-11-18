<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.MemberDAO, com.example.bean.MemberVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id=request.getParameter("id");	
	MemberVO u=memberDAO.getOne(Integer.parseInt(id));
%>


<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="sid" value="<%=u.getSid()%>"/>
<table>

<tr><td>ID:</td><td><input type="text" name="userid" value="<%=u.getUserid()%>"/></td></tr>
<tr><td>Name:</td><td><input type="text" name="username" value="<%=u.getUsername()%>" /></td></tr>
	<tr><td>Password:</td><td><input type="text" name="Password" value="<%=u.getPassword()%>" /></td></tr>
	<tr><td>email:</td><td><input type="text" name="email" value="<%=u.getEmail()%>" /></td></tr>
	<!--<tr><td>blog:</td><td><input type="text" name="blogurl" value="<%=u.getBlogurl()%>" /></td></tr>-->
	</td></tr>
	<tr><td>photo:</td><td><input type="text" name="photo" value="<%=u.getPhoto()%>" /></td></tr>
	<tr><td>detail:</td><td><input type="text" name="detail" value="<%=u.getDetail()%>" /></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>