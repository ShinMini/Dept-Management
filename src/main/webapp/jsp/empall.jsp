<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empall.jsp</title>

<link rel="stylesheet" href="../css/empall.css">
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
				<input type="hidden" name="command" value="emp"> 
				<a href="#" id="goEmpA" style= "color: black; background-color: #E7EFC5;"> Emp Info </a>
			</form>
		</div>

		<div class="content">
		<h2>All of Employee Info</h2>
			<!-- #customers -->
			<table id="emps">
				<tr>
					<th>사원 번호</th>
					<th>사원 명</th>
					<th>직업</th>
					<th>연봉</th>
				</tr>

				<c:forEach items="${requestScope.allEmp}" var="emp">
					<tr>
						<td>${emp.empno}</td>
						<td>${emp.ename}</td>
						<td>${emp.job}</td>
						<td>${emp.sal}</td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>

</body>
</html>


