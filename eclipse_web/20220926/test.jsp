<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    ����� jsp������....
    
<%
	//�ش� ��ȣ ���ʿ� �ڹ� �ڵ带 �Է��� �� �־��
	String userID = request.getParameter("id");
	String userPW = request.getParameter("pw");
%>

���̵�� <%=userID%> <br>
��й�ȣ�� <%= userPW%>