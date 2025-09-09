package dto;

public class CAD_pagenationDTO {
	private int lastPageNum;        // 마지막 페이지 번호
	private int pageGroupStart;     // 현재 페이지 그룹의 시작 번호
	private int pageGroupEnd;       // 현재 페이지 그룹의 끝 번호
	private int currentPageStartNum; // 현재 페이지의 시작 행 번호
	private int total;              // 전체 데이터 개수
	private int currentPage;        // 현재 페이지 번호
	private int start;              // LIMIT 절에 사용할 시작 인덱스
	
	// Getters and Setters
	public int getStart() {
		return start;
	}
	
	public void setStart(int start) {
		this.start = start;
	}
	
	public int getLastPageNum() {
		return lastPageNum;
	}
	
	public void setLastPageNum(int lastPageNum) {
		this.lastPageNum = lastPageNum;
	}
	
	public int getPageGroupStart() {
		return pageGroupStart;
	}
	
	public void setPageGroupStart(int pageGroupStart) {
		this.pageGroupStart = pageGroupStart;
	}
	
	public int getPageGroupEnd() {
		return pageGroupEnd;
	}
	
	public void setPageGroupEnd(int pageGroupEnd) {
		this.pageGroupEnd = pageGroupEnd;
	}
	
	public int getCurrentPageStartNum() {
		return currentPageStartNum;
	}
	
	public void setCurrentPageStartNum(int currentPageStartNum) {
		this.currentPageStartNum = currentPageStartNum;
	}
	
	public int getTotal() {
		return total;
	}
	
	public void setTotal(int total) {
		this.total = total;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	@Override
	public String toString() {
		return "CAD_pagenationDTO [lastPageNum=" + lastPageNum + ", pageGroupStart=" + pageGroupStart + ", pageGroupEnd="
				+ pageGroupEnd + ", currentPageStartNum=" + currentPageStartNum + ", total=" + total + ", currentPage="
				+ currentPage + ", start=" + start + "]";
	}
}
