<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>Applicant Check List for ${interviewtable.hrApplicant.applicantname}</h2>

<table border="1" style="width:100%">
<tr>
<th>Items</th>
<th>Status</th>
</tr>
<tr>
<td>Human Resource Interview</td><td><c:out value="${interviewtable.hrinterviewresult}" /></td>
</tr><tr>
<td>Hiring Manager Interview</td><td><c:out value="${interviewtable.hminterviewresult}" /></td>
</tr><tr>
<td>Group Interview</td><td><c:out value="${interviewtable.groupinterviewresult}" /></td>
</tr><tr>
<td>Coding Test Result</td><td><c:out value="${interviewtable.codingtestresult}" /></td>
</tr>
=======
<h1> Check List </h1>

 

</table>
</body>
</html>