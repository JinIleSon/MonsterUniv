package service;

import java.util.List;

import dao.AMS_studByGradesDAO;
import dto.AMS_studentDTO;
import dto.PagenationDTO;

public enum AMS_studByGradeService {
	INSTANCE;
	
	private AMS_studByGradesDAO dao = AMS_studByGradesDAO.getInstance();
	
	public PagenationDTO getPagenationDTO(String pg, String searchType, String keyword) {
		int total = 0;
		
		if(keyword == null) {
			total = dao.selectCountTotalWithGrade();
		} else {
			total = dao.selectCountSearchWitGrade(searchType, keyword);
		}
		
		int lastPageNum = 0;
		
		if(total % 10 == 0) {
			lastPageNum = total / 10;
		} else {
			lastPageNum = total / 10 + 1;
		}
		
		int currentPage = 1;
		
		if(pg != null) {
			currentPage = Integer.parseInt(pg);
		}
		
		int start = (currentPage - 1) * 10;
		
		int currentPageGroup = (int) Math.ceil(currentPage / 10.0);
		int pageGroupStart = (currentPageGroup - 1) * 10 + 1;
		int pageGroupEnd = currentPageGroup * 10;
		
		if(pageGroupEnd > lastPageNum) {
			pageGroupEnd = lastPageNum;
		}
		
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
	
	public List<AMS_studentDTO> findAllWithGrade(int start, String egrade) {
		return dao.selectAllWithGrade(start, egrade);
	}
}
