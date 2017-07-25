<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/constants/db.jsp" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%
	boolean loginCheck=false;
	Class.forName(ORACLE_DRIVER);
	PreparedStatement psmt=DriverManager.getConnection(ORACLE_URL,USERID,PASSWORD)
	.prepareStatement(String.format("SELECT * FROM %s WHERE %s=? and %s=?",TABLE_MEMBER,MEMBER_ID,MEMBER_PASSWORD));
	psmt.setString(1, request.getParameter("id"));
	psmt.setString(2, request.getParameter("pw"));
	ResultSet rs=psmt.executeQuery();
	if(rs.next()){
	loginCheck=true;
	}
	if(loginCheck==true){
		%>
		<script>
		alert('로그인성공!')
		location.href="<%=request.getContextPath()%>/common/main.jsp";
		</script>
		<%
	}else{
		%>
		<script>
		alert('로그인실패!')
		location.href="<%=request.getContextPath()%>/common/login.jsp";
		</script>
		<%
	}
%>