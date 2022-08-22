package com.study.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.study.board.vo.BoardSearchVO;
import com.study.board.vo.BoardVO;
import com.study.exception.DaoException;

public class BoardDaoOracle implements IBoardDao {

	@Override
	public int getTotalRowCount(BoardSearchVO searchVO) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb = new StringBuffer();     
			sb.append(	 "  SELECT    count(*)             ");
			sb.append(	 "  FROM 	  board                ");
			
			ps = conn.prepareStatement(sb.toString());
			rs = ps.executeQuery();
			
			int count = 0;
			if(rs.next()) {
				count = rs.getInt(1);
			}
			return count;
			
		}catch(SQLException e){
			throw new DaoException(" getTotalRowCount : " + e.getMessage());
		}finally{
			if(rs != null) {try{rs.close();}catch(Exception e){}}
			if(ps != null) {try{ps.close();}catch(Exception e){}}
			if(conn != null) {try{conn.close();}catch(Exception e){}}
		}		
	}

	@Override
	public List<BoardVO> getBoardList(BoardSearchVO searchVO) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb = new StringBuffer();     
			 		
			sb.append(" SELECT * FROM  			(							    ");
			sb.append("     SELECT ROWNUM as rnum  ,a.*    					    ");
			sb.append("     FROM (	SELECT    								    ");
			sb.append("               bo_no       , bo_title   , bo_category    ");
			sb.append("             , a.mem_id    AS mem_id    					");
			sb.append("             , bo_content , bo_hit       				");
			sb.append("             , bo_reg_date , bo_mod_date , bo_del_yn     ");
			
			sb.append("             , b.mem_name AS bo_writer        			");
			
			sb.append("             FROM  board a , member b    				");
			sb.append("             WHERE a.mem_id = b.mem_id     				");
			sb.append("             ORDER BY a.bo_no DESC      					");
			sb.append("      ) a ) b   											");
			sb.append(" WHERE rnum BETWEEN 	? 	AND 	?  					    ");
			
			
			ps = conn.prepareStatement(sb.toString());
			
			int i = 1 ; 
			ps.setInt(i++, searchVO.getFirstRow());
			ps.setInt(i++, searchVO.getLastRow());
			
			rs = ps.executeQuery();
			
			List<BoardVO> BoardList = new ArrayList<>();
			
			while(rs.next()){
				BoardVO board = new BoardVO();
				board.setBoNo(rs.getInt("bo_no"));
				board.setBoTitle(rs.getString("bo_title"));
				board.setBoCategory(rs.getString("bo_category"));
				board.setMemId(rs.getString("mem_id")); 
				board.setBoContent(rs.getString("bo_content"));
				board.setBoHit(rs.getInt("bo_hit"));
				board.setBoRegDate(rs.getString("bo_reg_date"));
				board.setBoModDate(rs.getString("bo_mod_date"));
				board.setBoDelYn(rs.getString("bo_del_yn"));
				board.setBoMemName(rs.getString("bo_writer"));
				BoardList.add(board);
			}

			return BoardList;
			
		}catch(SQLException e){
			throw new DaoException(" getBoardList : " + e.getMessage());
			
		}finally{
			if(rs != null) {try{rs.close();}catch(Exception e){}}
			if(ps != null) {try{ps.close();}catch(Exception e){}}
			if(conn != null) {try{conn.close();}catch(Exception e){}}
		}		
	}

	@Override
	public BoardVO getBoard(int boNo) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb = new StringBuffer();  
			sb.append(" SELECT  										");
			sb.append("       bo_no       , bo_title   , bo_category   	");
			sb.append("      , a.mem_id    AS mem_id    				");
			sb.append("      , bo_content , bo_hit       				");
			sb.append("     , bo_reg_date , bo_mod_date , bo_del_yn   	");
			sb.append("     , b.mem_name AS bo_writer       			");
			sb.append(" FROM  board a , member b   						");
			
			sb.append(" WHERE a.mem_id = b.mem_id    					");
			sb.append(" AND a.bo_no = ?   								");
			
			ps = conn.prepareStatement(sb.toString());
			
			ps.setInt(1, boNo);
			
			rs = ps.executeQuery();
			
			if(rs.next()){		
				BoardVO board = new BoardVO();
				board.setBoNo(rs.getInt("bo_no"));
				board.setBoTitle(rs.getString("bo_title"));
				board.setBoCategory(rs.getString("bo_category"));
				board.setMemId(rs.getString("mem_id")); 
				board.setBoContent(rs.getString("bo_content"));
				board.setBoHit(rs.getInt("bo_hit"));
				board.setBoRegDate(rs.getString("bo_reg_date"));
				board.setBoModDate(rs.getString("bo_mod_date"));
				board.setBoDelYn(rs.getString("bo_del_yn"));
				board.setBoMemName(rs.getString("bo_writer"));
				
				return board;
			}
			
		}catch(SQLException e){
			throw new DaoException("getBoard : " + e.getMessage());
			
		}finally{
			if(rs != null) {try{rs.close();}catch(Exception e){}}
			if(ps != null) {try{ps.close();}catch(Exception e){}}
			if(conn != null) {try{conn.close();}catch(Exception e){}}
		}
		return null;	
	}

	@Override
	public int increaseHit(int boNo) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb = new StringBuffer();        
			sb.append("  UPDATE 	board 	SET			");
			sb.append("				bo_hit = bo_hit+1	");
			sb.append("	 WHERE 		bo_no=?				");
			
			ps=conn.prepareStatement(sb.toString());
			ps.setInt(1, boNo);
			int cnt=ps.executeUpdate();
			return cnt;
			
		}catch (Exception e) {
			throw new DaoException("increaseHit : " + e.getMessage());
		}finally {
			if(rs != null) {try{rs.close();}catch(Exception e){}}
			if(ps != null) {try{ps.close();}catch(Exception e){}}
			if(conn != null) {try{conn.close();}catch(Exception e){}}
		}	
	}

	@Override
	public int updateBoard(BoardVO board) {
		Connection conn =null;
		PreparedStatement ps=null;
		ResultSet rs=null;
				
		try{
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb=new StringBuffer();
			sb.append(" UPDATE board SET 				");
			sb.append("   	  bo_title = 	 ?			");
			sb.append("   	, bo_content  =  ?		  	");
			sb.append("   	, bo_mod_date = sysdate		");
			sb.append(" WHERE bo_no = ? 				");
			
			ps=conn.prepareStatement(sb.toString());
			
			int i=1;
			ps.setString(i++, board.getBoTitle());
			ps.setString(i++, board.getBoContent());
			ps.setInt(i++, board.getBoNo());
			
			int cnt=ps.executeUpdate(); 
			return cnt;
			
		}catch(SQLException e){
			throw new DaoException("updateBoard : " + e.getMessage());
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){}}
			if(ps!=null){try{ps.close();}catch(Exception e){}}
			if(conn!=null){try{conn.close();}catch(Exception e){}}
		}
		
	}

	@Override
	public int deleteBoard(BoardVO board) {
		Connection conn =null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try{
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			StringBuffer sb=new StringBuffer();
			sb.append(" DELETE	FROM	board 	");
			sb.append(" WHERE 					");
			sb.append("     bo_no = ?  			");
			
			ps=conn.prepareStatement(sb.toString());
			
			ps.setInt(1, board.getBoNo());
			int cnt=ps.executeUpdate();
			return cnt;
			
		}catch(SQLException e){
			throw new DaoException("deleteBoard : " + e.getMessage());
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){}}
			if(ps!=null){try{ps.close();}catch(Exception e){}}
			if(conn!=null){try{conn.close();}catch(Exception e){}}
		}
	}

	@Override
	public int insertBoard(BoardVO board) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try{
			conn=DriverManager.getConnection("jdbc:apache:commons:dbcp:study");			
		
			StringBuffer sb=new StringBuffer();
			sb.append(" INSERT INTO board ( 									");
			sb.append("       bo_no           , bo_title     , bo_category 		");
			sb.append("     , mem_id          , bo_content   , bo_hit 			");
			sb.append("     , bo_reg_date     , bo_mod_date  , bo_del_yn 		");
			sb.append(" ) VALUES ( 												");
			sb.append("     seq_board.nextval , ?     		 , 'a01'			");
			sb.append("     , ?      		  , ?			 , 0 				");
			sb.append("     , sysdate         , null         , 'N'	 		    ");
			sb.append(" ) 														");
			
			ps = conn.prepareStatement(sb.toString());
			
			int i=1;
			
			ps.setString(i++, board.getBoTitle() );
			ps.setString(i++, board.getMemId() );
			ps.setString(i++, board.getBoContent() );
			
			int cnt=ps.executeUpdate();
			return cnt;
			
		}catch(SQLException e){
			throw new DaoException("insertBoard : " + e.getMessage());
		}finally{
			if(rs!=null){try{rs.close();}catch(Exception e){}}
			if(ps!=null){try{ps.close();}catch(Exception e){}}
			if(conn!=null){try{conn.close();}catch(Exception e){}}
		}
	}
	
}
