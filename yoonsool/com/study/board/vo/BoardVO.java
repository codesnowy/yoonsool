package com.study.board.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class BoardVO {
	
	private int boNo;                                 /* 글 번호 */
	private String boTitle;                           /* 글 제목 */
	private String boCategory;                        /* 글 분류 코드(공지를 위해 설정) */
	private String memId;                             /* 글쓴이 ID*/
	private String boContent;                         /* 글 내용 */
	private int boHit;                                /* 조회수 */
	private String boRegDate;                         /* 등록 일자 */
	private String boModDate;                         /* 수정 일자 */
	private String boDelYn;                           /* 삭제 여부 */
	private String boMemName;                         /* 글쓴이 닉네임 (조인으로 가져옴) */
	
	public BoardVO() {
	}
	
	@Override 
	public String toString() {
		  return ToStringBuilder.reflectionToString(
				  this,	ToStringStyle.MULTI_LINE_STYLE); 
	}

	public int getBoNo() {
		return boNo;
	}

	public void setBoNo(int boNo) {
		this.boNo = boNo;
	}

	public String getBoTitle() {
		return boTitle;
	}

	public void setBoTitle(String boTitle) {
		this.boTitle = boTitle;
	}

	public String getBoCategory() {
		return boCategory;
	}

	public void setBoCategory(String boCategory) {
		this.boCategory = boCategory;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getBoContent() {
		return boContent;
	}

	public void setBoContent(String boContent) {
		this.boContent = boContent;
	}

	public int getBoHit() {
		return boHit;
	}

	public void setBoHit(int boHit) {
		this.boHit = boHit;
	}

	public String getBoRegDate() {
		return boRegDate;
	}

	public void setBoRegDate(String boRegDate) {
		this.boRegDate = boRegDate;
	}

	public String getBoModDate() {
		return boModDate;
	}

	public void setBoModDate(String boModDate) {
		this.boModDate = boModDate;
	}

	public String getBoDelYn() {
		return boDelYn;
	}

	public void setBoDelYn(String boDelYn) {
		this.boDelYn = boDelYn;
	}

	public String getBoMemName() {
		return boMemName;
	}

	public void setBoMemName(String boMemName) {
		this.boMemName = boMemName;
	}
	
	
}
