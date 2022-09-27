<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    여기는 jsp페이지....
    
<%
	//해당 기호 안쪽에 자바 코드를 입력할 수 있어요
	String userID = request.getParameter("id");
	String userPW = request.getParameter("pw");
%>

아이디는 <%=userID%> <br>
비밀번호는 <%= userPW%>