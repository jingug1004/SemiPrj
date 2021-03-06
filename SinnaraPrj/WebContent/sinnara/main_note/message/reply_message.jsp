<%@page import="prj.novel.note.NoteGetDto"%>
<%@ page import="prj.novel.note.NoteGetDao"%>
<%@ page contentType="text/html; charset=EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<title>신나라 : 문화의 시작 - </title>
	
	<link rel="stylesheet" href="../bootstrap337/css/bootstrap.min.css"/>
	<script src="../bootstrap337/js/jquery-3.1.1.min.js"></script>
	<script src="../bootstrap337/js/bootstrap.min.js"></script>
	
	<link rel="shortcut icon" type="image/x-icon" href="/fcon.ico">
	<link rel="stylesheet" type="text/css" href="../joara_css/base.css" media="all">
	<link rel="stylesheet" type="text/css" href="../joara_css/content.css" media="all">
							
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />
	<link rel="stylesheet" href="../joara_css/nyroModal.css" type="text/css" media="screen" />
	<link rel="stylesheet" type="text/css" href="../message_css/sinara_message.css" media="all">
	
	<!-- JQueryUI관련... -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
 	<script>
		$(function() {
			$("#rev_id").attr("readonly",true);
			$("#btn_write").click(function() {
				if ($("#note_content").val() == "") {
					$("#dialog").dialog();
					$("#note_content").focus();
				}
				else {
					$("#messageForm").submit();
				}
			});
		});
	</script>
</head>

<body id="body_m" class="" >
	<div id="dialog" title="알림" style="display:none">
	  <p>보낼 쪽지 내용을 입력 하세요.</p>
	</div>

	<jsp:useBean id="dao" class="prj.novel.note.NoteGetDao" />
	<%
		int num = Integer.parseInt(request.getParameter("msgNum"));
		NoteGetDto noteDto = dao.getNoteByGetNum(num, "read");
		pageContext.setAttribute("noteDto", noteDto);
	%>
	
	<div id="wrap">
		<%@ include file="../inc/message_header.jsp"%>
	
		<div id="container" class="clearfix">
			<%@ include file="../inc/message_left.jsp"%>

			<div id="content">
				<div class="title">
				<h3><img src="../images/message/t_inbox_send.gif" alt="쪽지  보내기"></h3>
				<div class="path">
					홈 &gt; 쪽지 &gt; 
					<select class="fe_select" onchange="location.href=this.value">
						<option value="receive_message_list.jsp" >받은 쪽지함</option>
						<option value="receive_message_list.jsp?page=send" >보낸 쪽지함</option>
						<option value="receive_message_list.jsp?page=r_store" >받은 쪽지 보관함</option>
						<option value="receive_message_list.jsp?page=s_store" >보낸 쪽지 보관함</option>
						<option value="send_message.html" selected>쪽지 보내기</option>
					</select>
				</div>
			</div>
			<form id="messageForm" method="post" action="send_message_proc.jsp">
				<input type="hidden" id="message_mode" name="message_mode" value="">
				
				<input type="hidden" id="note_subject" name="note_subject" value="${noteDto.getNote_subject()}">
				<input type="hidden" id="note_sendid" name="note_sendid" value="${noteDto.getNote_receiveid()}">
					
				<section class="message_box_area viewer_work_write">
					<table class="tbl_write border">
						<colgroup>
							<col style="width:146px">
							<col style="width:auto;">
						</colgroup>
						<tr>
							<th><label for="la_id">받는사람 아이디</label></th>
							<td><input type="text" id="note_receiveid" name="note_receiveid" title="받는사람 아이디" size="10" class="input_text" style="width:95%;" value="${noteDto.getNote_sendid()}"/></td>
						</tr>
						<tr>
							<th><label for="la_cont">내용</label></th>
							<td class="write">
								<textarea id="note_content" name="note_content" rows="5" cols="50" class="textarea" placeholder="이용약관에 어긋나는 스팸 및 광고, 음란, 폭력적 등의 내용은 제재 될 수 있습니다." style="width:580px; height:210px;"></textarea>
								<p class="mess_keep"><label><input type="checkbox" name="note_keepyn" value="s" class="inputCheck" /> 보낸 쪽지함에 보관</label></p>
							</td>
						</tr>
					</table>
					<div class="btnC">
						<a id="btn_write" class="common_btn btn3"><span>보내기</span></a>
					</div>
				</section>
			</form>
		</div>
	</div>
	</div>
	<%@ include file="../inc/message_right.jsp"%>

	<!-- wrap end -->

	<!-- footer -->
	<footer id="footer">
	</footer>
<!-- member layer -->
	<div class="layer" id="layer_members" style="position:absolute;">
		<a href="#" class="close"><img src="/images/content/work/btn_close.gif" alt="close"></a>
		<ul class="set">
			<li id="layer_member_goyard"><a href="#" target="_blank">뜰 바로가기</a></li>
			<li id="layer_member_memberinfo"><a href="#">회원정보</a></li>
			<li id="friend_reg"><a href="#">이웃등록</a></li>
			<li id="bad_friend_reg"><a href="#">불량이웃등록</a></li>
			<li id="layer_member_messagesend"><a href="#">쪽지보내기</a></li>
			<li id="layer_member_report"><a href="#">신고하기</a></li>
		</ul>
	</div>
	<script type="text/javascript">
<script type="text/javascript">
  //  ga not defined 수정 (epkim 16.02.19)
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-48261815-1', 'joara.com');
  ga('send', 'pageview');

</script>

<script type="text/javascript">
$(document).ready(function() {
	// 세션 storage 사용 (ie8 이상)
	if (window.sessionStorage) {
		var ss_login_value = sessionStorage.getItem('jw_login_log');
		if (ss_login_value != 'y') {
			// makeLoginLog();
			// 세션 storage 에 기록 남김
			console.log('log: session');
			sessionStorage.setItem('jw_login_log', 'y');
		} // end if
	}
	// 세션 storage 미지원인 경우 cookie 사용
	else {
		var ck_login_value = getCookie('jw_login_log'); // func.js 사용
		if (ck_login_value != 'y') {
			// makeLoginLog();
			// 쿠키에 기록 남김
			console.log('log: cookie');
			setCookie('jw_login_log', 'y'); // func.js 사용
		} // end if
	} // end of (window.sessionStorage)

});
</script>

</body>
</html>