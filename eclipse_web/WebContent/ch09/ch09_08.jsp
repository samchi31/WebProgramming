<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>자식 선택자</title>
<style>
.test * { 
    display: block;
    border: 2px solid orange;
    color: blue;
    padding: 5px;
    margin: 15px;
}

</style>
<script type="text/javascript" src="/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	/* 자식 선택자
	자식은 선택 요소의 바로 하위 노드만을 의미
	자손과 자식의 개념을 혼동 말자
	 */
	$(function() {
		$('button').click(function() {
			$('div>p').css({
				"color" : 'lightgreen',
				'border' : '2px solid greeen'
			});
		});

	});
</script>
</head>
<body>
	<h2>노드 관계 그림</h2>
	<p>
		<img src="/images/ch09_07_02.jpg" />
	</p>
	<div class="test">
		<a href="#"> a1 Tag </a>
		<p>
			p (child) <span>span 1</span> <a href="#"> a2 Tag </a>
		</p>
		<p>
			p (child) <span>span 2</span>
		</p>
	</div>
	<button>Click me</button>
</body>
</html>