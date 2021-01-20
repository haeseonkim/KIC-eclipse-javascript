<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="model1.BoardTO" %>

<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>

<%
	BoardTO to = (BoardTO)request.getAttribute("to");

	JSONObject result = new JSONObject();
	String mail[] = null;
	if(to.getMail().equals("")){
		mail = new String[]{"",""};
	}else{
		mail = to.getMail().split("@");
	}
	result.put("subject", to.getSubject());
	result.put("writer", to.getWriter());
	result.put("mail1", mail[0]);
	result.put("mail2", mail[1]);
	result.put("content", to.getContent());
	
	out.println(result);
%>

