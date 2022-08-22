package com.study.board.service;

import java.util.List;

import com.study.board.vo.BoardSearchVO;
import com.study.board.vo.BoardVO;

public interface IBoardService {
	
	public List<BoardVO> getBoardList(BoardSearchVO searchVO);
	public BoardVO getBoard(int boNo);
	public void increaseHit(int boNo);
	public void modifyBoard(BoardVO board);
	public void removeBoard(BoardVO board);
	public void registBoard(BoardVO board);
	
}
