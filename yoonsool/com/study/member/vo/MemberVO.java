package com.study.member.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class MemberVO {

	private String memId;                             /* 회원아이디 */
	private String memPass;                           /* 회원비밀번호 */
	private String memName;                           /* 회원별명 */
	private String memBir;                            /* 회원생년월일 */
	private String memMail;                           /* 회원이메일 */
	
	public MemberVO() {
	}
	
	@Override 
	public String toString() {
		  return ToStringBuilder.reflectionToString(
				  this, ToStringStyle.MULTI_LINE_STYLE); 
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPass() {
		return memPass;
	}

	public void setMemPass(String memPass) {
		this.memPass = memPass;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemBir() {
		return memBir;
	}

	public void setMemBir(String memBir) {
		this.memBir = memBir;
	}

	public String getMemMail() {
		return memMail;
	}

	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	
	
	
}
