<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="model.HrLogin"%>
<%@ page import="model.HrRole"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<<<<<<< HEAD
<title>Insert title here</title>
=======
<title>Interview</title>
>>>>>>> 85510539097022493086f1c9365e44868ac95a97
</head>
<body>

	<%@ include file="CommonOptions.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Interview</title>
</head>
<body background="http://www.ngahr.com/sites/default/files/background/slide1.png">






	<form action="Interview" method="post">
		<h3>
			<c:out value="${user.hrRole.rolename} " /> Interview
		</h3>
		<input type="radio" name="status" value="Pass"> Pass<br>
		<input type="radio" name="status" value="Fail"> Fail<br>
		<br>

		<h4>Any Comments?</h4>
		<input type="text" name="comment" value="${param.comment}"><br>
		<hr>
		<c:if test="${user.hrRole.rolename != 'HR Manager'}" >
			<h3>Taken Coding Test?</h3>
			<input type="radio" name="test" value="Taken"> Yes 
			<input type="radio" name="test" value="NotTaken"> No<br>
			<h3>Dose the Applicant Pass or Fail?</h3>
			<input type="radio" name="teststatus" value="Pass">
			Pass <input type="radio" name="teststatus" value="Fail"> Fail<br>
		</c:if>
		<input type="submit" value="Submit">
	</form>
	
		<br>
	<br>
	<form action="DisplayForm.jsp" method="post">
	<input type="submit" value="Back">
    </form>
</body>
</html>
