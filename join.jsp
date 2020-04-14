<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="wide=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header"><!-- 로고 담는 영역 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <!-- 아이콘 바 메뉴버튼 -->
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a><!-- 브랜드는 로고 의미 -->
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav"><!-- ul은 하나의 리스트를 넣을때 사용 -->
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right"> <!-- right는 오른쪽에 넣을때 -->
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a> <!-- #은 현재 가리키는 링크없다는 의미, caret은 하나의 아이콘을 의미-->
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li><!-- active는 현재 선택이 되었다는 의미 -->
						<li><a href="join.jsp">회원가입</a></li><!-- 현재 선택된 현재의 홈페이지 -->
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container"> <!-- 컨테이너 처럼 감싸기 -->
		<div class="col-lg-4"></div>
		<div class="col-lg-4"><!-- 로그인 양식 -->
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp"> <!-- form = 양식, post는 회원가입이나 로그인같이 정보를 숨기면서 보낼때 사용하는 method loginAction에 로그인정보를 보냄 -->
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary forn-control" value="회원가입"> <!-- 회원가입 버튼 -->
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
