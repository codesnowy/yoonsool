package com.study.member.dao;

import java.util.List;
import com.study.member.vo.MemberVO;

public interface IMemberDao {
	
	public List<MemberVO> getMemberList();
	public MemberVO getMember(String memId);
	public int deleteMember(MemberVO member);
	public int insertMember(MemberVO member);
	public int updateMember(MemberVO member);
	public boolean dupleCheck(String memId);

}
