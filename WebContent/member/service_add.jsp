<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/constants/db.jsp" %>
<%
	int result=0;
	
	String name=request.getParameter("name");
	String[] subjects=request.getParameterValues("subject");
	String subject="";
	for(String s:subjects){
		subject+=s+" ";
	}
	
	Class.forName(ORACLE_DRIVER);
	PreparedStatement psmt=DriverManager.getConnection(ORACLE_URL,USERID,PASSWORD).prepareStatement(MEMBER_INSERT);
	psmt.setString(1, request.getParameter("id"));
	psmt.setString(2, request.getParameter("name"));
	psmt.setString(3, request.getParameter("pw"));
	psmt.setString(4, request.getParameter("birthday"));
	psmt.setString(5, request.getParameter("email"));
	psmt.setString(6, request.getParameter("phone"));
	psmt.setString(7, request.getParameter("gender"));
	psmt.setString(8, request.getParameter("major"));
	psmt.setString(9, subject);
	result=psmt.executeUpdate();
	
	if(result==0){
		%>
		<script>
		alert('회원가입 실패');
		location.href("service_add.jsp");
		</script>
		<%
	}else{
		%>
		<script>
		alert('회원가입 성공');
		location.href="<%=request.getContextPath()%>/common/main.jsp?login=yes&name=<%=name%>";
		</script>
		<%
	}
%>