<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Insert title here</title>
    <script type="text/javascript" src="/js/jquery-3.6.1.min.js"></script>
    <script type="text/javascript">
      $(function () {
        $("button").click(function () {
          // class = "test"로 정의된 모든 요소와
          // id = "demo"로 정의된 하나의 요소를 선택하여 숨김
          $('.test,#demo').hide();
        });
      });
    </script>
  </head>
  <body>
    <h2 class="test">This is a heading</h2>
    <p id="demo">This is a paragraph.</p>
    <p>This is another paragraph.</p>
    <button>Click me</button>
  </body>
</html>
