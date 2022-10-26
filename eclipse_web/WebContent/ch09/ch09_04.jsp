<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	/* 
	 .class 선택자
	 jQuery의 .class 선택자는 특정 클래스가 있는 요소(태그)를 찾음 

	 */

	$(function() {
		$('button').on('click',function(){
			//$('.class이름').실행_함수();
			//class="test"인 요소를 선택
			//하나의 문서 내에는 여러 개의 class가 존재할 수 있음
			//id 선택자는 하납ㄲ에 있을 수 없지만 class는 모두가 적용됨
			
			$('.test').hide();
		})
		
	})
</script>
</head>
<body>
	<h2 class="test">This is a heading</h2>
	<!-- <p> 태그에 class="test"를 부여하였다면
      class="test"로 정의된 모든 요소가 숨겨짐
    -->
	<p class="test">This is a paragraph.</p>
	<p>This is another paragraph.</p>
	<button>Click me</button>
</body>
</html>