<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Insert title here</title>
    <script src="/js/jquery-3.6.1.min.js"></script>
    <script type="text/javascript">
      /*
      #id 선택자는 HTML 태그의 id 속성을 사용하여 특정 요소를 찾음
      id는 페이지 내에서 고유(유일, unique)해야 하므로 단일 고유 요소를 찾으려는 경우 사용
      만약, 여러개의 id가 존재한다면 최초의 해당 id에만 적용됨
      */
      $(function () {
        $("button").click(function () {
          $("button").click(function(){
        	  $("#test").hide();
          });
          
        });
      });
    </script>
  </head>
  <body>
    <h2>This is a heading</h2>
    <p>this is a paragraph</p>
    <p id="test">this is another paragraph</p>
    <button>Click</button>
  </body>
</html>
