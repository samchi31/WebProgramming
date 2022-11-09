<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.pager {
	float:left;
}

.p1 {
    display: flex;
    justify-content: space-around;
    padding: 10p
}
#pagelist{
 	display: flex;
    justify-content: center;
}

#writeArea{
	display: flex;
    justify-content: right;
}

</style>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ include file="header.jsp"%>
	<%@ include file="../../site/aside1.jsp"%>
	<div class="col-sm-8 text-left">
		<h1>Welcome</h1>
		<p>WEB-INF inner index.jsp...</p>
		<hr>
		<%--       리스트영역 --%>
		<div id="list">
			<!-- 			w3school collapse source accordion -->
			<div class="panel-group" id="accordion">
				<c:forEach var="list" items="${requestScope.list}" varStatus="stts">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse${stts.count}">${list.subject}</a>
						</h4>
					</div>
					<div id="collapse${stts.count}" class="panel-collapse collapse">
						<div class="p1">
							<span>작성자: ${list.writer}</span>
							<span>작성일: ${list.wdate}</span>
							<span>조회수: ${list.hit}</span>
						</div>
						<div class="pannel-body">
							${list.content}
						</div>
					</div>
				</div>		
				</c:forEach>		
			</div>
			<!-- 			w3schools collapse accordion end-->
		</div>
		
		<%-- 글쓰기 영역 --%>
		<!-- Trigger the modal with a button -->
		<div class="writeArea">
			<button type="button" class="btn btn-info" 
			data-backdrop="static" data-toggle="modal" data-target="#myModal">
			글쓰기</button>
		</div>
		<%-- 글쓰기 영역 --%>

		<!-- 		페이지영역 -->
		<c:set var="currentPage" value="${requestScope.cPage}"/>
		현재페이지:<c:out value="${currentPage}" />
		<div id="pagelist">
			<ul class="pager">
				<li><a class="prev" href="#">Prev</a></li>
			</ul>
			<ul class="pagination pager" >
				<c:forEach var="i" begin="${requestScope.sPage}" end="${requestScope.ePage}">
					<c:if test="${currentPage == i}">
						<li class="active"><a class="paging" href="#">${i}</a></li>
					</c:if>
					<c:if test="${currentPage != i}">
						<li><a class="paging" href="#">${i}</a></li>
					</c:if>
				</c:forEach>
			</ul> 
			<ul class="pager">
				<li><a class="next" href="#">Next</a></li>
			</ul>
		</div>
	</div>
	
	<%-- 모달영역 --%>
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	
	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">게시글 작성</h4>
	      </div>
	      <div class="modal-body">
	        <form onsubmit="valid()">
		      <div class="form-group">
		        <label class="control-label col-sm-2" >이름</label>
		        <div class="col-sm-4">
		          <input type="text" class="txt form-control" name="writer" id="wrtNm" required>
		        </div>
		        <label class="control-label col-sm-2" >비밀번호</label>
		        <div class="col-sm-4">
		          <input type="password" class="txt form-control" name="password" id="wrtPw" required><br>
		        </div>
		      </div>
		      
		      <div class="form-group">
		        <label class="control-label col-sm-2">제목</label>
		        <div class="col-sm-10">
		          <input type="text" class="txt form-control" name="subject" id="wrtSj" required><br>
		        </div>
		      </div>
		      
		      <div class="form-group">
		        <label class="control-label col-sm-2">메일</label>
		        <div class="col-sm-10">
		          <input type="text" class="txt form-control" name="mail" id="wrtEm"><br>
		        </div>
		      </div>
		      
		      <div class="form-group">
		        <label class="control-label col-sm-2">내용</label>
		        <div class="col-sm-10">
		          <textarea class="txt form-control" rows="5" cols="50" name="content" id="tta"></textarea><br>
		        </div>
		      </div>
		    <input type="submit" class="btn btn-success" value="전송">
		    </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	
	  </div>
	</div>
	<%-- 모달영역 --%>
	
	<script>
	//Ajax
	function valid(){
		$.ajax({
			type:'post',
			url:'/webPro/Write',
			data:$('form').serialize(),
			dataType:'text',
			success:function(rst){
// 				console.log(rst);
				if(rst>0){
					location.href = "/webPro/Index.do";
				} else {
					// fail 페이지로 이동
				}
			},
			error: function(xhr){
				alert(xhr.status);
			}
		});
	};

	$(".paging").on('click',function(){
		location.href="/webPro/Index.do?pageNo="+$(this).text();
	});
	
	// 이전버튼 클릭이벤트
	let currentPage;
	$(".prev").on('click',function(){
		if(${currentPage} == 1){
			currentPage = ${currentPage};
		} else {
			currentPage= ${currentPage} - 1;
		}			
		location.href="/webPro/Index.do?pageNo="+currentPage;
	});
	
	$(".next").on('click',function(){
		if(${currentPage} == ${requestScope.ttPage}){
			currentPage = ${currentPage};
		} else {
			currentPage= ${currentPage} + 1;
		}			
		location.href="/webPro/Index.do?pageNo="+currentPage;
	});
		
	</script>
	
	
	
	<%@ include file="/site/aside2.jsp"%>
	<%@ include file="/site/footer.jsp"%>

</body>
</html>
