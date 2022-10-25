<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
	/* 형제 선택자
	a b => 자손(자녀+손녀)
	a>b => 자식(자녀)
	a+b => 형제
	자신과 동일한 레벨에 있는 노드들
	같은 레벨에서 다음에 오는 1개의 태그를 선택
	 */
	$(function() {
		$('button').click(function() {
			/* <a> 태그 바로 다음에 오는 형제 <p> 태그를 선택
			2번의 형제인 <p>를 선택하고 끝 */
			$("a+p").css({
				'color' : 'lightblue',
				'border' : '2px solid lightgreen'
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