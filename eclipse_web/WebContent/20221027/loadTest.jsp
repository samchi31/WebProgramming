<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	String uId = request.getParameter("usrId");
	String uPw = request.getParameter("usrPw");

	// JDBC를 사용해서 DB 정보 가져오기
	Class.forName("oracle.jdbc.driver.OracleDriver");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "in89";
	String password = "java";
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();
	String sql = "select mem_id from member where mem_id = '" + uId + "' and mem_pass = '" + uPw + "'";
	ResultSet rs = stmt.executeQuery(sql);
	// System.out.println(rs.next());		// boolean 값으로 값의 유무를 확인

	if (rs.next()) {
%>
{"rst":"ok"}
<%
	} else {
%>
{"rst":"fail"}
<%
	}
%>