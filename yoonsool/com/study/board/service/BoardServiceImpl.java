package com.study.board.service;

import java.util.List;

import com.study.board.dao.BoardDaoOracle;
import com.study.board.dao.IBoardDao;
import com.study.board.vo.BoardSearchVO;
import com.study.board.vo.BoardVO;

public class BoardServiceImpl implements IBoardService{
	
	IBoardDao boardDao = new BoardDaoOracle();

	@Override
	public List<BoardVO> getBoardList(BoardSearchVO searchVO) {
		int totalRowCount = boardDao.getTotalRowCount(searchVO);
		searchVO.setTotalRowCount(totalRowCount);
		searchVO.pageSetting();
		
		return boardDao.getBoardList(searchVO);
	}

	@Override
	public BoardVO getBoard(int boNo) {
		BoardVO board = boardDao.getBoard(boNo);	
		return board;
	}

	@Override
	public void increaseHit(int boNo) {
		int cnt = boardDao.increaseHit(boNo);	
	}

	@Override
	public void modifyBoard(BoardVO board) {
		int cnt = boardDao.updateBoard(board);		
	}

	@Override
	public void removeBoard(BoardVO board) {
		int cnt = boardDao.deleteBoard(board);	
		
	}

	@Override
	public void registBoard(BoardVO board) {
		int cnt = boardDao.insertBoard(board);		
	}

}
