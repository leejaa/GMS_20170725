<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp" %>
<body>
	<div id="container">
	<form id="member_search_box" action="service_search.jsp">
		검색조건<select name=option>
		  <option value="id">아이디</option>
		  <option value="name">이름</option>
	  	</select><br /><br />
	  	입력<input type="text" name="input"/>
	  	<button type="submit" class="btn btn-danger">검색</button>
	  	</form>
	</div>
</body>
<%@ include file="/common/footer.jsp" %>
</html>
