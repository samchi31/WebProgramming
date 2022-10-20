<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// 핸들러 함수
	function removeNode() {
		let para = document.getElementById("div1");
		let node = document.getElementsByTagName("p");
		for(let i=0;i<node.length;i++){
			para.removeChild(node[i]);
		}
	}
</script>
</head>
<body>
	<div id="div1">
		<h2>This is a heading</h2>
		<p>this is a paragraph</p>
		<p>this is another paragraph</p>
	</div>
	<button onclick="removeNode()">Click</button>
</body>
</html>
