package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.ProfessorListDAO;
import dto.PagenationDTO;
import dto.ProfessorListDTO;

public enum  Professor_listService {
	INSTANCE;
	
	private ProfessorListDAO dao = ProfessorListDAO.getInstance();
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// 페이지네이션 처리 메서드
	public PagenationDTO getPagenationDTO(String pg, String searchType, String keyword) {
		
		int total = 0;
		
		if(keyword == null || keyword.isEmpty()) {
			// 전체 교수 개수 구하기
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
		
		PagenationDTO dto = new PagenationDTO();
		dto.setTotal(total);
		dto.setStart(start);
		dto.setCurrentPage(currentPage);
		dto.setCurrentPageStartNum(currentPageStartNum);
		dto.setLastPageNum(lastPageNum);
		dto.setPageGroupStart(pageGroupStart);
		dto.setPageGroupEnd(pageGroupEnd);
		
		return dto;
	}
	
	// 전체 교수 목록 조회 (페이지네이션)
	public List<ProfessorListDTO> professorList(int start){
		return dao.selectAll(start);
	}
	
	// 교수 검색 조회 (페이지네이션)
	public List<ProfessorListDTO> searchProfessorList(int start, String searchType, String keyword){
		return dao.selectSearch(start, searchType, keyword);
	}
}
