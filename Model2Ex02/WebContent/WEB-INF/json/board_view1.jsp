<%@ page language="java" contentType="text/json; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	
<%@ page import="model1.BoardTO" %>

<%@ page import="org.json.simple.JSONObject" %>

<%
	BoardTO to = (BoardTO)request.getAttribute("to");
	
	JSONObject result = new JSONObject();
	result.put("flags", "0");
	
	JSONObject jsonObject = new JSONObject();
	jsonObject.put("seq", to.getSeq());
	jsonObject.put("subject" , to.getSubject());
	jsonObject.put("writer", to.getWriter());
	jsonObject.put("mail", to.getMail());
	jsonObject.put("wip", to.getWip());
	jsonObject.put("wdate", to.getWdate());
	jsonObject.put("hit", to.getHit());
	jsonObject.put("wgap", to.getWgap());
	jsonObject.put("content", to.getContent());
	
	result.put("data", jsonObject);
	out.println(result);
%>
