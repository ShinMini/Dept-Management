<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deptall.jsp</title>

<link rel="stylesheet" href="../css/deptall.css">
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
					href="#" id="goDeptA"
					style="color: black; background-color: #E7EFC5;"> Dept Info</a>
			</form>

			<form action="com" id="goEmpForm">
				<input type="hidden" name="command" value="emp"> <a href="#"
					id="goEmpA"> Emp Info </a>
			</form>
		</div>

		<div class="content">
			<!-- 프로필카드로 이동 -->


			<h2>All of Department Info</h2>

			<!-- #customers -->
			<table id="depts">
				<tr>
					<th>Dept no</th>
					<th>Dept name</th>
					<th>Dept loc</th>
				</tr>

				<c:forEach items="${requestScope.allDept}" var="dept">
					<tr id="deptTr">
						<td>${dept.deptno}</td>
						<td>${dept.dname}</td>
						<td>${dept.loc}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
</html>


