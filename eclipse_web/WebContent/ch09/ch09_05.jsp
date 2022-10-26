<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Insert title here</title>
    <script type="text/javascript" src="/js/jquery-3.6.1.min.js"></script>
    <script type="text/javascript">
      /*
       * 그룹 선택자
       * jQuery 태그 선택자는 여러 종류의 태그를 선택할 경우 콤마(,)에 의해 구분하여 선택할 수 있다
       */
      $(function () {
        $("button").click(function () {
					// $('태그1,태그2,...').실행함수()
					$('h2,div,span').css("background-color",'skyblue');
				});
      });
    </script>
  </head>
  <body>
    <h1>Welcome to My Web Page</h1>
    <h2>Nice to meet you</h2>
    <div>Very nice indeed.</div>
    <p>How are you?</p>
    <p>I'm fine, <span>thanks.</span></p>
    <button>Click me</button>
  </body>
</html>
