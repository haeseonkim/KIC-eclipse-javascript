<%@ page language="java" contentType="text/json; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<%@ page import="model1.BoardTO" %>

<%@page import="java.util.ArrayList"%>

<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>

<%
	// action이 보낸 db검색 결과를 json형식으로 바꿔서 
	// 디자인 페이지로 보냄
	
	ArrayList<BoardTO> lists = (ArrayList)request.getAttribute("lists");
	
	JSONObject result = new JSONObject();
	result.put("flag", "0");

	JSONArray jsonArray  = new JSONArray();
	for(BoardTO to: lists){
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("seq", to.getSeq());
		jsonObject.put("subject" , to.getSubject());
		jsonObject.put("writer", to.getWriter());
		jsonObject.put("wdate", to.getWdate());
		jsonObject.put("hit", to.getHit());
		jsonObject.put("wgap", to.getWgap());
		
		// json 하면서 추가
		jsonObject.put("content", to.getContent());
		
		jsonArray.add(jsonObject);
	}
	
	result.put("data", jsonArray);
	// 디자인 페이지로 json값 전달
	out.println(result);
%>
