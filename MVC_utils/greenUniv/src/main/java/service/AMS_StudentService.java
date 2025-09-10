package service;

import java.util.List;

import dao.AMS_StudentDAO;
import dto.AMS_studentDTO;
import dto.PagenationDTO;

public enum AMS_StudentService {
	INSTANCE;
	
	private AMS_StudentDAO dao = AMS_StudentDAO.getInstance();
	
	public PagenationDTO getPagenationDTO(String pg, String searchType, String keyword) {
		int total = 0;
		
		if(keyword == null) {
			total = dao.selectCountTotal();
		} else {
			total = dao.selectCountSearch(searchType, keyword);
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
	
	public List<AMS_studentDTO> findAllSearch(int start, String searchType, String keyword) {
		return dao.selectStudentSearch(start, searchType, keyword);
	}
	public void register(AMS_studentDTO dto) {
		dao.insert(dto);
	}
	
	public List<AMS_studentDTO> findAll(int start) {
		return dao.selectAll(start);
	}
}
