<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 삭제</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
* {
	box-sizing: border-box;
}

.container {
	margin-top: 50px;
	padding: 0px;
	width: 1200px;
	border: 1px solid black;
	background-color: rgba(216, 248, 222, 0.478);
}

#text, #searchIn, #jibunAddress, #detailAddress {
	text-align: center;
}

#header {
	font-size: 1.7rem;
	text-align: center;
	height: auto;
	background-color: rgba(16, 12, 238, 0.3);
}

#info {
	text-align: center;
	line-height: 1.88rem;
	background-color: rgba(216, 248, 222, 0.478);
}

#info>div {
		margin-top:1.2rem;
	text-align: center;
	float: left;
	width: 11%;
}

.row {
	height: auto;
	margin: 0px;
	padding: 1px;
}

#footer {
	border: black;
	background-color: rgba(216, 248, 222, 0.478);
	text-align: center;
}

#back, #delete {
	background-color: pink;
	border-radius: 5px;

	margin-bottom: 1rem;
}
</style>

</head>
<body>

	<div class="container">
		<div class="row" id="header">
			<div class="col-30" style ="letter-spacing : 1rem;">학생 정보 삭제</div>
		</div>

		<div class="row" id="contents" align=center style="padding: 0px">
			<div class="col-15 order-2 order-sm-1" id="info">
<div class="col-2 p-2">순위</div>	
				<div class="col-2 p-2">아이디</div>
				<div class="col-2 p-2">이름</div>
				<div class="col-2 p-2">국어</div>

				<div class="col-2 p-2">영어</div>
				<div class="col-2 p-2">수학</div>
				<div class="col-2 p-2">합계</div>
				<div class="col-2 p-2">평균</div>
				<div class="col-2 p-2">날짜</div>

				<c:forEach var="i" items="${list}">
				
				
				   <div class="col-2 p-2">${i.rank}</div>
					<div class="col-2 p-2">${i.sid }</div>
					<div class="col-2 p-2">${i.name }</div>
					<div class="col-2 p-2">${i.kor }</div>
					<div class="col-2 p-2">${i.eng }</div>
					<div class="col-2 p-2">${i.math }</div>
					<div class="col-2 p-2"><fmt:formatNumber value="${i.getSum()}" pattern=".0"/></div>
					<div class="col-2 p-2"><fmt:formatNumber value="${i.getAvg()}" pattern=".0"/></div>
					<div class="col-2 p-2">${i.exam_date}</div>

				</c:forEach>



			</div>


		</div>
		
			<div class="row" id="footer" style="padding: 0px">
				<div class="col-30">
					<form action="delete.menu">
					<input type= "text" name = "sid" placeholder="   아이디를 입력해 주세요." >
					<button id = delete>삭제</button>
						</form>
				</div>

				<div align=center>
					<button id="back" type = "button">뒤로가기</button>
					<div></div>
				</div>
			</div>
	

	</div>




	<script>


		$("#back").on("click", function() {
			location.href = "index.jsp;"
		})
	</script>
</body>
</html>