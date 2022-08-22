package com.study.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.study.exception.DaoException;
import com.study.member.vo.MemberVO;

public class MemberDaoOracle implements IMemberDao {

	@Override
	public List<MemberVO> getMemberList() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			
			StringBuffer sb = new StringBuffer();  
			sb.append(" SELECT    									 ");
			sb.append("     mem_id      , mem_pass    , mem_name     ");
			sb.append("     , mem_bir	, mem_mail          		 ");
			sb.append(" FROM       									 ");
			sb.append("     member         							 ");
			
			ps = conn.prepareStatement(sb.toString());
			rs = ps.executeQuery();
			
			List<MemberVO> memberList = new ArrayList<>();
			
			while(rs.next()){
				MemberVO member = new MemberVO();
				member.setMemId(rs.getString("mem_id"));
				member.setMemPass(rs.getString("mem_pass"));
				member.setMemName(rs.getString("mem_name"));
				member.setMemBir(rs.getString("mem_bir"));	
				member.setMemMail(rs.getString("mem_mail"));
				memberList.add(member);
			}	
			return memberList;
			
		}catch(SQLException e){
			throw new DaoException("getMemberList: " + e.getMessage());

		}finally{
			if(rs != null) {try{rs.close();}catch(Exception e){}}
			if(ps != null) {try{ps.close();}catch(Exception e){}}
			if(conn != null) {try{conn.close();}catch(Exception e){}}
		}	
		
	}

	@Override
	public MemberVO getMember(String memId) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			
			StringBuffer sb = new StringBuffer();
			sb.append("  SELECT 										");
			sb.append("      mem_id      , mem_pass    , mem_name  		");
			sb.append("      , mem_bir	 , mem_mail 			 		");
			sb.append("  FROM    member  								");
			sb.append("  WHERE mem_id =  ?  							");
	
			ps = conn.prepareStatement(sb.toString());
			
			ps.setString(1, memId);
			
			rs = ps.executeQuery();
			
			MemberVO member = new MemberVO();
			
			if(rs.next()){	
				
				member.setMemId(rs.getString("mem_id"));
				member.setMemPass(rs.getString("mem_pass"));
				member.setMemName(rs.getString("mem_name"));
				member.setMemBir(rs.getString("mem_bir"));	
				member.setMemMail(rs.getString("mem_mail"));
				
				return member;
			}
			
			
		}catch(SQLException e){
			throw new DaoException("getMember : " + e.getMessage());
		}finally{
			if(rs != null) {try{rs.close();}catch(Exception e){}}
			if(ps != null) {try{ps.close();}catch(Exception e){}}
			if(conn != null) {try{conn.close();}catch(Exception e){}}
		}
		return null;
	}

	@Override
	public int deleteMember(MemberVO member) {
		
		Connection conn =null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try{
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb=new StringBuffer();
			sb.append(" DELETE FROM member            ");
			sb.append(" WHERE    mem_id =      ?      ");
			
			ps=conn.prepareStatement(sb.toString());
			
			int i = 1;
			ps.setString(i++, member.getMemId());
			
			int cnt=ps.executeUpdate();
			return cnt;
			
		}catch(SQLException e){
			throw new DaoException("deleteMember : " + e.getMessage());
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){}}
			if(ps!=null){try{ps.close();}catch(Exception e){}}
			if(conn!=null){try{conn.close();}catch(Exception e){}}
		}
	}

	@Override
	public int insertMember(MemberVO member) {
		Connection conn =null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try{
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb=new StringBuffer();
			sb.append(" INSERT INTO member (      					 ");
			sb.append("     mem_id    , mem_pass    , mem_name       ");
			sb.append("     , mem_bir    , mem_mail       			 ");
			sb.append(" ) VALUES (       						 	 ");
			sb.append("       ?   		 , ?  		  , ?    		 ");
			sb.append("     , ?    		 , ?      					 ");
			sb.append(" )       									 ");
			
			ps=conn.prepareStatement(sb.toString());
			
			int i=1;
			ps.setString(i++, member.getMemId() );
			ps.setString(i++, member.getMemPass() );
			ps.setString(i++, member.getMemName() );
			ps.setString(i++, member.getMemBir() );
			ps.setString(i++, member.getMemMail() );
			
			int cnt=ps.executeUpdate();
			return cnt;
			
		}catch(SQLException e){	
			throw new DaoException("insertMember : " + e.getMessage());
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){}}
			if(ps!=null){try{ps.close();}catch(Exception e){}}
			if(conn!=null){try{conn.close();}catch(Exception e){}}
		}	
	}

	@Override
	public boolean dupleCheck(String memId) {
		Connection conn =null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try{
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb=new StringBuffer();
			sb.append("SELECT						 ");   
			sb.append("		  COUNT(*) AS cnt	 ");   
			sb.append("FROM						    ");   
			sb.append("		member		 	 ");   
			sb.append("WHERE 1=1					 ");   
			sb.append("	AND	mem_id = ?			 ");   
			
			ps=conn.prepareStatement(sb.toString());
			
			ps.setString(1, memId);
			rs = ps.executeQuery();
			int cnt = 0;
			
			while(rs.next()) {
				cnt = rs.getInt("cnt");
			}
			
			return (cnt == 1);
			
		}catch(SQLException e){	
			throw new DaoException("insertMember : " + e.getMessage());
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){}}
			if(ps!=null){try{ps.close();}catch(Exception e){}}
			if(conn!=null){try{conn.close();}catch(Exception e){}}
		}	
	}

	@Override
	public int updateMember(MemberVO member) {
		Connection conn =null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		try{
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb=new StringBuffer();
			sb.append(" UPDATE    member SET           ");
			sb.append("       mem_pass   = ?           ");
			sb.append("      ,mem_name   = ?           ");
			sb.append("      ,mem_bir    = ?           ");
			sb.append("      ,mem_mail   = ?           ");
			sb.append(" WHERE    mem_id  = ?           ");
			
			ps=conn.prepareStatement(sb.toString());
			int i=1;
			ps.setString(i++, member.getMemPass());
			ps.setString(i++, member.getMemName());
			ps.setString(i++, member.getMemBir());
			ps.setString(i++, member.getMemMail());
			ps.setString(i++, member.getMemId());
			
			int cnt=ps.executeUpdate();
			return cnt;
		}catch(SQLException e){
			throw new DaoException("updateMember : " + e.getMessage());
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){}}
			if(ps!=null){try{ps.close();}catch(Exception e){}}
			if(conn!=null){try{conn.close();}catch(Exception e){}}
		}
	}

}