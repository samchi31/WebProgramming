<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script type="text/javascript">
      // 웹 페이지가 로드되면 실행되는 함수
      // 문서 로드(메모리에 올라감)가 완료되기 전에 jQuery 코드가 실행되지 않도록 하기 위함
      $(document).ready(function () {
        // 버튼 요소(태그)를 클릭하면 실행되는 함수의 선언
        $("button").click(function () {
          //모든 <p> 요소를 숨김
          $("p").hide();
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
