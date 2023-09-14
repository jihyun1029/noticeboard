<%@page import="org.sp.news.domain.News"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	News news = (News)request.getAttribute("news");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=button] {
	background-color: #04AA6D;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=button]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script type="text/javascript">
	function edit() {
		// 동기방식으로 전송
		$("form").attr({
			action : "/news/edit",
			method : "post"
		});
		$("form").submit();
	}
	
	function del() {
		// 동기방식으로 전송
		$("form").attr({
			action : "/news/del",
			method : "post"
		});
		$("form").submit();
	}
	
	$(function() {
		$('#content').summernote();
		
		// 등록버튼 이벤트
		$("#bt_edit").click(function() {
			if(confirm("수정하시겠어요?")) {
				edit();
			}
		});
		
		$("#bt_del").click(function() {
			if(confirm("삭제하시겠어요?")) {
				del();
			}
		});
		
		// 목록 이벤트
		$("#bt_list").click(function() {
			
		});
	});
</script>
</head>
<body>

	<h3>상세보기</h3>

	<div class="container">
		<form>
			<input type="hidden" name="news_idx" value="<%=news.getNews_idx() %>">
			 <input type="text" name="title" value="<%=news.getTitle()%>">
			 <input type="text" name="writer" value="<%=news.getWriter()%>">
			 
			<textarea id="content" name="content" style="height: 200px"><%=news.getContent() %></textarea>

			<input type="button" value="수정" id="bt_edit">
			<input type="button" value="삭제" id="bt_del">
			<input type="button" value="목록" id="bt_list">
		</form>
	</div>

</body>
</html>
