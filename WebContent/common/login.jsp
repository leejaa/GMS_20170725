<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp" %>
<body>
<div class="container">
  <h2>로그인</h2>
  <form id="login_box" action="loginCheck.jsp" method="post">
    <div class="form-group">
      <label for="email">ID</label>
      <input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요" name="id">
    </div>
    <div class="form-group">
      <label for="pw">Password:</label>
      <input type="password" class="form-control" id="pw" placeholder="비밀번호를 입력하세요" name="pw">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember">아이디저장</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
    <a href="<%=request.getContextPath()%>/member/member_join.jsp"><button type="button" class="btn btn-danger">회원가입하기</button></a>
  </form>
</div>
</body>
<%@ include file="/common/footer.jsp" %>
</html>
