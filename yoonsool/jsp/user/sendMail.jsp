<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="com.study.member.SMTPAuthenticator"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="com.study.member.service.IMemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 보내기</title>
</head>
<body>
	<%
		String checkId = request.getParameter("memId");
		request.setAttribute("checkId", checkId);
		String to = request.getParameter("memMail");
		request.setAttribute("to", to);

		IMemberService memberService = new MemberServiceImpl();
		MemberVO member = memberService.getMember(checkId);
		request.setAttribute("member", member);
				
	%>
	
	<c:if test="${member eq null}">
		<script>
			alert('가입하지 않은 아이디입니다.')
			history.back()
		</script>
	</c:if>
	<c:if test="${to ne member.memMail}">
		<script>
			alert('가입 시 사용한 이메일이 아닙니다. 다시 확인해주세요.')
			history.back()
		</script>
	</c:if>
	<c:if test="${member ne null and to eq member.memMail}">
	<%
		String from = "codewos@gmail.com";
		String subject = "윤슬 비밀번호 찾기 메일입니다.";
		String content = checkId + " 회원님의 비밀번호는 " + member.getMemPass() +"입니다.";

		Properties props = new Properties();
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.debug", "true");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");

		try {

			Authenticator auth = new SMTPAuthenticator();
			Session ses = Session.getInstance(props, auth);

			ses.setDebug(true);

			MimeMessage msg = new MimeMessage(ses);
			// 제목
			msg.setSubject(subject);
			// 보내는 사람
			Address fromAddr = new InternetAddress(from, "윤술");
			msg.setFrom(fromAddr);
			// 받는 사람
			Address toAddr = new InternetAddress(to);
			msg.addRecipient(Message.RecipientType.TO, toAddr);
			// 내용과 인코딩
			msg.setContent(content, "text/html;charset=UTF-8");

			// 전송 
			Transport.send(msg);

		} catch (Exception e) {
			e.printStackTrace();
			out.println("<script>alert('Send Mail Failed');history.back();</script>");
			// 오류 발생시 뒤로 돌아가도록
			return;
		}
		// 성공시 로그인 화면으로 돌아간다. 
		out.println("<script>alert('메일로 비밀번호를 보내드렸습니다.'); location.href='./login.do';</script>");
	%>
	</c:if>

</body>
</html>