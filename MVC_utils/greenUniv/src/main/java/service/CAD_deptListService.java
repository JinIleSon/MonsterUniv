package service;

import java.util.List;

import dao.CAD_deptListDAO;
import dto.CAD_deptListDTO;
import dto.CAD_pagenationDTO;

public enum CAD_deptListService {
	
	INSTANCE;
	
	private CAD_deptListDAO dao = CAD_deptListDAO.getInstance();
	
	// 페이지네이션 처리 메서드
	public CAD_pagenationDTO getPagenationDTO(String pg, String searchType, String keyword) {
		
		int total = 0;
		
		if(keyword == null || keyword.isEmpty()) {
			// 전체 학과 개수 구하기
			total = dao.selectCountTotal();
		} else {
			// 검색 결과 개수 구하기
			total = dao.selectCountSearch(searchType, keyword);
		}
		
		// 마지막 페이지번호 구하기
		int lastPageNum = 0;
		
		if(total % 10 == 0) {
			lastPageNum = total / 10;	  // 10으로 나누어 떨어지면
		} else {
			lastPageNum = total / 10 + 1; // 10으로 나누어 떨어지지 않음
		}		
		
		// 현재 페이지 번호 시작값 구하기
		int currentPage = 1;
		
		if(pg != null) {
			currentPage = Integer.parseInt(pg);	
		}
		
		int start = (currentPage - 1) * 10;		
		
		// 현재 페이지 그룹 구하기
		int currentPageGroup = (int) Math.ceil(currentPage / 10.0);
		int pageGroupStart = (currentPageGroup - 1) * 10 + 1;
		int pageGroupEnd = currentPageGroup * 10;
		
		if(pageGroupEnd > lastPageNum) {
			pageGroupEnd = lastPageNum;
		}
		
		// 현재 페이지 글 시작 번호 구하기
		int currentPageStartNum = total - (currentPage - 1) * 10;
		
		CAD_pagenationDTO dto = new CAD_pagenationDTO();
		dto.setTotal(total);
		dto.setStart(start);
		dto.setCurrentPage(currentPage);
		dto.setCurrentPageStartNum(currentPageStartNum);
		dto.setLastPageNum(lastPageNum);
		dto.setPageGroupStart(pageGroupStart);
		dto.setPageGroupEnd(pageGroupEnd);
		
		return dto;
	}
	
	// 전체 학과 목록 조회 (페이지네이션)	
	public List<CAD_deptListDTO> deptList(int start){
		return dao.selectAll(start);
	}
	
	// 학과 검색 조회 (페이지네이션)
	public List<CAD_deptListDTO> searchDeptList(int start, String searchType, String keyword){
		return dao.selectSearch(start, searchType, keyword);
	}
}
