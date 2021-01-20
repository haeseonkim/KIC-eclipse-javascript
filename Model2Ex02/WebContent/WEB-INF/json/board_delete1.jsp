<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="model1.BoardTO" %>

<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>


<%
	BoardTO to = (BoardTO)request.getAttribute("to");
	
	JSONObject result = new JSONObject();
	
	result.put("subject",to.getSubject());
	
	out.println(result);
%>
	