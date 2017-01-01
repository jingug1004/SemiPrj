<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
%>
	<jsp:useBean id="dao" class="prj.novel.logininput.Login_Dao" />
	<jsp:useBean id="dto" class="prj.novel.registmember.Member_Dto" />
	<jsp:setProperty property="*" name="dto" />
<%
		if (dao.login(id).getMember_pass().equals(pw)) {
			session.setAttribute("loginUser", id);
			response.sendRedirect("/SinnaraPrj/sinnara/index.jsp");
			
			
		} else {
%>
	<script>
		alert("ID와 비밀번호를 확인하세요.")
		location.href = "login.jsp";
	</script>
<%
		}
%>
</body>
</html>