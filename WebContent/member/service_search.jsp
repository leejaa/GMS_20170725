<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ include file="/constants/db.jsp" %>
<%
String option=request.getParameter("option");
String input=request.getParameter("input");

switch(option){
case "id":
	%>
	<script>
	location.href="member_detail.jsp?id=<%=input%>";
	</script>
	<%
	break;
case "name":
	%>
	<script>
	location.href="member_list.jsp?input=<%=input%>&option=<%=option%>";
	</script>
	<%
	break;
default : 
	return;
}
%>