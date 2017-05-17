<%@page import="com.jx372.emaillist.dao.EmailListDao"%>
<%@page import="com.jx372.emaillist.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	String firstname = request.getParameter("fn");
	String lastname = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmailListVo vo=new EmailListVo();
	vo.setFirstName(firstname);
	vo.setLastName(lastname);
	vo.setEmail(email);
	
	new EmailListDao().insert(vo);
	
	//리다이렉트 응답
	
	response.sendRedirect("/emaillist01");  //밑의 html은 필요가 없어짐 

%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 이메일을 등록에 성공 했습니다. </h1>
</body>
</html>