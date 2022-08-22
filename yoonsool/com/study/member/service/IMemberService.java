package com.study.member.service;

import java.util.List;

import com.study.exception.BizDuplicateKeyException;
import com.study.exception.BizNotEffectedException;
import com.study.exception.BizNotFoundException;
import com.study.member.vo.MemberVO;

public interface IMemberService {
	
	public List<MemberVO> getMemberList();
	public MemberVO getMember(String memId);	
	public void removeMember(MemberVO member);
	public void registMember(MemberVO member);
	public void modifyMember(MemberVO member);
	public boolean dupleCheck(String memId);

}
