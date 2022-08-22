package com.study.board.vo;

import com.study.common.vo.PagingVO;

public class BoardSearchVO extends PagingVO{

	private String searchWord;
	private String searchCategory;
	
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public String getSearchCategory() {
		return searchCategory;
	}
	public void setSearchCategory(String searchCategory) {
		this.searchCategory = searchCategory;
	}
	
}
