package com.study.member;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends Authenticator {

	protected PasswordAuthentication getPasswordAuthentication() {
		String mailId = ""; //아이디
		String mailPw = ""; //이메일 전송용 패스워드 

		return new PasswordAuthentication(mailId,mailPw);
	}
	
}
