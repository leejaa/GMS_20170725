<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/constants/db.jsp" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%
Class.forName(ORACLE_DRIVER);
Connection conn=DriverManager.getConnection(ORACLE_URL,USERID,PASSWORD);
Statement stmt=conn.createStatement();
String sql="SELECT * FROM Member WHERE id='hong'";
ResultSet rs=stmt.executeQuery(sql);
String findName="";
if(rs.next()){
findName=rs.getString("name");
}
%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<h1>Hello <%=findName %> !</h1>
</body>
</html>