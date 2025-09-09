package dto;

public class PagenationDTO {

	private int total;
	private int start;
	private int currentPage;
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	private int lastPageNum;
	private int pageGroupStart;
	private int pageGroupEnd;
	private int currentPageStartNum;
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
	@Override
	public String toString() {
		return "PagenationDTO [total=" + total + ", start=" + start + ", currentPage=" + currentPage + ", lastPageNum="
				+ lastPageNum + ", pageGroupStart=" + pageGroupStart + ", pageGroupEnd=" + pageGroupEnd
				+ ", currentPageStartNum=" + currentPageStartNum + "]";
	}


}
