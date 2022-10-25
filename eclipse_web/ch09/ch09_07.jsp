<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>노드 선택자</title>
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
	/*노드선택자
	DOM(Document Object Model) 노드는 트리 구조
	선택된 요소(태그)를 기준으로 다른 노드와의 가족 관계를 형성
	이들 관계를 중심으로 해당 노드를 선택자로 지정하여 요소를 선택	
	*/
	/*자손 선택자
	자손은 선택된 노드의 모든 하위 노드가 해당됨
	$("요소_이름A 요소_이름B").실행함수();
	*/
	$(function(){
		$('div a').css({'color':'green','border':'2px solid green'});
	})	
</script>
</head>
<body>
<h2>노드 선택자</h2>
   <p>
      <img src="/images/ch09_07_01.jpg" />
   </p>
   <h2>노드 관계 그림</h2>
   <p>
      <img src="/images/ch09_07_02.jpg" />
   </p>
   <p>
      <em>div를 선택자(기준)로 판단하였을 때 a, p, p 요소를 자식으로 갖고,
         span, a, span을 손자로 갖음
      </em>
   </p>
   <div class="test">
      <a href="#"> a1 Tag </a>
        <p>p (child)
          <span>span 1</span>   
            <a href="#"> a2 Tag </a> 
      </p>
      <p>p (child)
         <span>span 2</span>
      </p> 
   </div>
   <button>Click me</button>
</body>
</html>