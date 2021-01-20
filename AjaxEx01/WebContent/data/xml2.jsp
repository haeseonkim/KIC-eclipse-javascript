<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="javax.naming.Context"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="javax.naming.NamingException"%>
<%@ page import="javax.sql.DataSource"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>

<%
	Connection conn= null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	StringBuffer result = new StringBuffer();
	
	try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource dataSource = (DataSource)envCtx.lookup("jdbc/mariadb2");
	
		conn = dataSource.getConnection();
		
		String sql = "select name, publisher, author, price from books";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		// jdom 복잡한걸 할 때 이걸 쓴다.
		result.append("<books>");
		while(rs.next()){
			result.append("<book>");
				result.append("<name>"+rs.getString("name")+"</name>");
				result.append("<publisher>"+rs.getString("publisher")+"</publisher>");
				result.append("<author>"+rs.getString("author")+"</author>");
				result.append("<price>"+rs.getString("price")+"</price>");
			result.append("</book>");
		}
		result.append("</books>");
		
	}catch(NamingException e){
		System.out.println("[에러]" + e.getMessage());
	}catch(SQLException e){
		System.out.println("[에러]" + e.getMessage());
	}finally{
		if(rs != null)rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}
	
	out.println(result);
%>
