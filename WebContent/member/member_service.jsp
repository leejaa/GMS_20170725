<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Map"%>
<%!
public Map<String,Object> getSpec(HttpServletRequest request){
	Map<String,Object> map=new HashMap<>();
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String gender=request.getParameter("gender");
	String major=request.getParameter("major");
	String[] subjects=request.getParameterValues("subject");
	String subject="";
	for(String s:subjects){
		subject+=s+" ";
	}
	if(gender.equals("male")){
		gender="남";
	}else{
		gender="여";
	}
	String birthday=request.getParameter("birthday");
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
	String today=sdf.format(new Date());
	int age=Integer.parseInt(today)-Integer.parseInt(birthday.substring(0,4));
	
	map.put("id", id);
	map.put("name", name);
	map.put("email", email);
	map.put("phone", phone);
	map.put("gender", gender);
	map.put("major", major);
	map.put("subject", subject);
	map.put("age", age);
	return map;
}
%>