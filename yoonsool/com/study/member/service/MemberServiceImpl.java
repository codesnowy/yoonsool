package com.study.member.service;

import java.util.List;

import com.study.exception.BizDuplicateKeyException;
import com.study.exception.BizNotEffectedException;
import com.study.exception.BizNotFoundException;
import com.study.member.dao.IMemberDao;
import com.study.member.dao.MemberDaoOracle;
import com.study.member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService{
	
	IMemberDao memberDao = new MemberDaoOracle();

	@Override
	public List<MemberVO> getMemberList() {
		return memberDao.getMemberList();
	}

	@Override
	public MemberVO getMember(String memId) {
		MemberVO member = memberDao.getMember(memId);
		return member;
	}

	@Override
	public void removeMember(MemberVO member) {
		MemberVO vo = memberDao.getMember(member.getMemId());
		int cnt = memberDao.deleteMember(member);	
	}

	@Override
	public void registMember(MemberVO member) {
		MemberVO vo = memberDao.getMember(member.getMemId());
		int cnt = memberDao.insertMember(member);
	}

	@Override
	public boolean dupleCheck(String memId) {
		boolean dupleCheck = memberDao.dupleCheck(memId);
		return dupleCheck;
	}

	@Override
	public void modifyMember(MemberVO member) {
		MemberVO vo = memberDao.getMember(member.getMemId());
			int cnt = memberDao.updateMember(member);		
	}
}