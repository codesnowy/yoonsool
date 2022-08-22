package com.study.board.dao;

import java.util.List;

import com.study.board.vo.BoardSearchVO;
import com.study.board.vo.BoardVO;

public interface IBoardDao {
	
	public int getTotalRowCount(BoardSearchVO searchVO);
	public List<BoardVO> getBoardList(BoardSearchVO searchVO) ;	
	public BoardVO getBoard(int boNo);  
	public int increaseHit(int boNo); 
	public int updateBoard( BoardVO board);
	public int deleteBoard( BoardVO board);
	public int insertBoard(BoardVO board);

}
