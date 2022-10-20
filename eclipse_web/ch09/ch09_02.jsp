<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Insert title here</title>
    <script src="/js/jquery-3.6.1.min.js"></script>
    <script type="text/javascript">
      /*
      전체 선택자
      "*" 선택자는 HTML, head 및 body를 포함하여 문서의 모든 요소를 선택함
      "*" 선택자가 다른 요소와 함께 사용되면 지정된 요소 내의 모든 하위 요소를 선택함
      */
      
      $(function () {
        $("button").click(function () {
          // 태그 <body> 안에 포함된 모든 요소를 선택함
          $("body *").css("background-color","yellow");
        });
      });
    </script>
  </head>
  <body>
    <h2>This is a heading</h2>
    <p>this is a paragraph</p>
    <p>this is another paragraph</p>
    <button>Click</button>
  </body>
</html>
