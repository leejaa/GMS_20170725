<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ include file="/common/header.jsp" %>
<body>
<div id="wrapper" class="gms-width-100pro">
<h1 class="gms-text-center">성적관리시스템(GMS)</h1>
<hr />
<div class="container" style="border-color:black; width: 80%; height: 1300px; margin-left: 130px; margin-top: 80px; margin-right: 50px;">
<table id="index-tab" style="margin-left: 130px;margin-top: 50px; border-color: red; border-style: solid;">
	<tr id="index-tab-tr">
		<td><i class="glyphicon glyphicon-user">학생관리</i></td>
		<td><i class="glyphicon glyphicon-cloud">성적관리</i></td>
		<td><i class="glyphicon glyphicon-thumbs-up">게시판</i></td>
	</tr>
	<tr id="index-tab-tr">
		<td>
			<ul class="index-ul">
				<li><a href="<%=request.getContextPath()%>/member/member_join.jsp">회원가입</a></li>
				<li><a href="<%=request.getContextPath()%>/member/member_list.jsp">회원목록</a></li>
				<li><a href="<%=request.getContextPath()%>/member/member_update.jsp">회원정보수정</a></li>
				<li><a href="<%=request.getContextPath()%>/member/member_search.jsp">회원상세정보</a></li>
				<li><a href="<%=request.getContextPath()%>/member/member_delete.jsp">회원탈퇴</a></li>
			</ul>
		</td>
		<td>
			<ul class="index-ul">
				<li><a href="<%=request.getContextPath()%>/grade/grade_write.jsp">성적입력</a></li>
				<li><a href="<%=request.getContextPath()%>/grade/grade_list.jsp">성적목록</a></li>
				<li><a href="<%=request.getContextPath()%>/grade/grade_update.jsp">성적수정</a></li>
				<li>성적삭제</li>
			</ul>
		</td>
		<td>
			<ul class="index-ul">
				<li><a href="<%=request.getContextPath()%>/board/board_write.jsp">게시글 쓰기</a></li>
				<li><a href="<%=request.getContextPath()%>/board/board_list.jsp">게시글 목록</a></li>
				<li><a href="<%=request.getContextPath()%>/board/board_update.jsp">게시글 수정</a></li>
				<li>게시글 삭제</li>
			</ul>
		</td>
	</tr>

</table>
</div>
</div>
</body>
<%@ include file="/common/footer.jsp" %>
</html>