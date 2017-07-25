<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="/constants/db.jsp" %>
<%@ include file="/common/header.jsp" %>
<%
String id=request.getParameter("id");
String sql=String.format("SELECT * FROM %s WHERE ID=?",TABLE_MEMBER);
Class.forName(ORACLE_DRIVER);
PreparedStatement psmt=DriverManager.getConnection(ORACLE_URL,USERID,PASSWORD).prepareStatement(sql);
psmt.setString(1, id);
ResultSet rs=psmt.executeQuery();
String name="";
String pw="";
String birthday="";
String email="";
String phone="";
String gender="";
String major="";
String subject="";
String age="";
if(rs.next()){
	name=rs.getString("name");
	pw=rs.getString("password");
	birthday=rs.getString("birthday");
	email=rs.getString("email");
	phone=rs.getString("phone");
	gender=rs.getString("gender");
	major=rs.getString("subject");
	subject=rs.getString("subject");
	age=rs.getString("age");
	
}
%>

<div class="container">
  <h2>회원상세정보</h2>
   <form action="service_add.jsp" method="get">
      <div class="form-group">
      <label for="id">ID</label>
      <input type="text" class="form-control" id="id" name="id" readonly="readonly" value="<%=id%>">
    </div>
    <div class="form-group">
      <label for="pw">Password:</label>
      <input type="password" class="form-control"  name="pw" readonly="readonly" value="<%=pw%>">
    </div>
     <div class="form-group">
      <label for="name">이름</label>
      <input type="text" class="form-control"  name="name" readonly="readonly" value="<%=name%>">
    </div>
    <div class="form-group">
      <label for="email">이메일</label>
      <input type="email" class="form-control"  name="email" readonly="readonly" value="<%=email%>">
    </div>
    <div class="form-group">
      <label for="phone">전화번호</label>
      <input type="text" class="form-control" name="phone" readonly="readonly" value="<%=phone%>">
    </div>
    <div class="form-group">
      <label for="ssn">생년월일</label>
      <input type="text" name="birthday" class="form-control" readonly="readonly" value="<%=birthday%>">
    </div>
     <div class="form-group">
      <label for="gender">성별</label>
     <input type="text" name="gender" class="form-control" readonly="readonly" value="<%=gender%>">
    </div>
		 <div class="form-group">
		  <label for="major">전공</label>
    	 <input type="text" name="major" class="form-control" readonly="readonly" value="<%=major%>">
    </div>
    <div class="form-group">
      <label for="subject">수강과목</label>
	      <input type="text" name="subject" class="form-control" readonly="readonly" value="<%=subject%>">
    </div>
  </form>
</div>
</body>
<%@ include file="/common/footer.jsp" %>
</html>