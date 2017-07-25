<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ include file="/constants/db.jsp" %>
<%@ include file="/common/header.jsp" %>

<%
String option=request.getParameter("option");
String input=request.getParameter("input");
System.out.println("option : "+option);
System.out.println("input : "+input);
String sql=String.format("SELECT * FROM %s WHERE %s=?",TABLE_MEMBER,option);
Class.forName(ORACLE_DRIVER);
PreparedStatement psmt=DriverManager.getConnection(ORACLE_URL,USERID,PASSWORD).prepareStatement(sql);
psmt.setString(1, input);
ResultSet rs=psmt.executeQuery();
%>
<div class="container">
<h1 align="center">회원정보</h1>
  <table class="table">
    <thead>
      <tr>
        <th>아이디</th>
        <th>이름</th>
        <th>성별</th>
        <th>전공</th>
        <th>수강과목</th>
        <th>이메일</th>
        <th>나이</th>
      </tr>
    </thead>	
    <tbody>
    <% while(rs.next()){%>
      <tr class="danger">
        <td><a href="member_detail.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("id")%></a></td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("gender")%></td>
        <td><%=rs.getString("major")%></td>
        <td><%=rs.getString("subject")%></td>
        <td><%=rs.getString("email")%></td>
        <td><%=rs.getString("age")%></td>
      </tr>
      <%} %>
    </tbody>
  </table>
</div>

</body>
<%@ include file="/common/footer.jsp" %>
</html>

