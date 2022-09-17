<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empview.jsp</title>

<link rel="stylesheet" href="../css/com.css">
<link rel="stylesheet" href="../css/sideNavbar.css">
<link rel="stylesheet" href="../css/profileCard.css">

<script type="text/javascript" defer src="../js/sideNavbar.js"></script>
</head>
<body>

	<div class="mainContainer">
		<div class="sidenav" style="position: fix;">
			<a href="../index.html">Projects</a>

			<form action="com" id="goHomeForm">
				<input type="hidden" name="command" value="home"> <a
					href="#" id="goHomeA"> Home </a>
			</form>
			<form action="com" id="goDeptForm">
				<input type="hidden" name="command" value="dept"> <a
					href="#" id="goDeptA"> Dept Info</a>
			</form>

			<form action="com" id="goEmpForm">
				<input type="hidden" name="command" value="emp"> <a href="#"
					id="goEmpA" style="color: black; background-color: #E7EFC5;"> Emp Info </a>
			</form>
		</div>

		<div class="content container">
			<!-- dept & emp 데이터로 제공하는 목록들  -->
			<h2 style="margin-left: 10px; font-style: italic;">Employee
				Profile</h2>

			<div class="card">
				<img src="../img/img_avatar.png" alt="Avatar" style="width: 100%">
				<h4>
					<b> 사원 번호 : ${requestScope.one.empno} <br>
					</b>
				</h4>
				<p>
					사원명 : ${requestScope.one.ename} <br>
				</p>
				<p>
					사원 직업 : ${requestScope.one.job} <br>
				</p>
				<p>
					사원 연봉 : ${requestScope.one.sal} <br>
				</p>
			</div>
		</div>
	</div>

</body>
</html>