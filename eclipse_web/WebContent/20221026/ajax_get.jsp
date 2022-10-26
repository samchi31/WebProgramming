<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	/* 한글깨졌을 때 */
	/* request.setCharacterEncoding("utf-8"); */
	String nm = request.getParameter("dataNm");
	String key = request.getParameter("key");
%>

넘어온 데이터 : <%=nm %>
넘어온 데이터 : <%=key %>