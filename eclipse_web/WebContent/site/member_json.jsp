<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="site.MemberVO"%>
<%@page import="org.apache.commons.beanutils.BeanUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

MemberVO vo = new MemberVO();
Map<String, Object> map = new HashMap<>();

// 데이터 한줄씩 읽어오기
BufferedReader br = request.getReader();
String jsonData= br.readLine();
System.out.print(jsonData);

// GSON library 사용 (Google에서 만든 json parser)
//	: 자바에대한 JSON데이터 바인딩 지원을 제공하는 라이브러리
// JsonParser를 생성하여 parse()를 이용해 Object로 파싱할 수 있다
JsonParser jsonParser = new JsonParser();	
JsonObject jsonObj = (JsonObject)jsonParser.parse(jsonData);

Iterator<String> itr = jsonObj.keySet().iterator();
//hasNext() 로 요소의 존재 확인
while(itr.hasNext()){
	String key = itr.next();		//next(); 다음 항목을 가져옴
	String value = jsonObj.get(key).getAsString();
	map.put(key,value);
}

BeanUtils.populate(vo, map);
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
Connection conn = DriverManager.getConnection(url, "in89", "java");

String sql = "insert into member( mem_id, mem_pass, mem_name, mem_bir, mem_zip, mem_add1, mem_add2, mem_hp, mem_mail ) " 
		  +	" values ( ?,?,?,?,?,?,?,?,? ) ";

// System.out.println(sql);
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, vo.getMem_id());
pstmt.setString(2, vo.getMem_pass());
pstmt.setString(3, vo.getMem_name());
pstmt.setString(4, vo.getMem_bir());
pstmt.setString(5, vo.getMem_zip());
pstmt.setString(6, vo.getMem_add1());
pstmt.setString(7, vo.getMem_add2());
pstmt.setString(8, vo.getMem_hp());
pstmt.setString(9, vo.getMem_mail());

int cnt = pstmt.executeUpdate();

%>

<%=cnt %>