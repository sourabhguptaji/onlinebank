<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String username=request.getParameter("username");
String password=request.getParameter("password");
String repassword=request.getParameter("repassword");
String account=request.getParameter("account");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/dhobiwala","root","12345");
	PreparedStatement ps=con.prepareStatement("insert into clothes values(?,?,?)");
	ps.setString(1,username);
	ps.setString(2,password);
	ps.setString(3,repassword);
int i=0;
	i=ps.executeUpdate();
if(i==1)
{
response.sendRedirect("index.jsp");	
}
else
{
	response.sendRedirect("login.html");	
}
con.close();}
catch(Exception e)
{
e.printStackTrace();	
}

%>

</body>
</html>