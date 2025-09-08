package service;

import java.util.List;

import dao.AMS_LectureDAO;
import dto.AMS_lectureDTO;
import dto.PagenationDTO;

public enum AMS_LectureService {
	INSTANCE;
	
	private AMS_LectureDAO dao = AMS_LectureDAO.getInstance();
	
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
	
	public List<AMS_lectureDTO> findAllSearch(int start, String searchType, String keyword) {
		return dao.selectLectureSearch(start, searchType, keyword);
	}
	
	public void register(AMS_lectureDTO dto) {
		dao.insert(dto);
	}
	public AMS_lectureDTO findById(String deptcode) {
		return null;
			//return dao.select(deptcode);
	}
	public List<AMS_lectureDTO> findAll(int start) {
		return dao.selectAll(start);
	}
	public void modify(AMS_lectureDTO dto) {
		//dao.update(dto);
	}
	public void remove(String deptcode) {
		//dao.delete(deptcode);
	}
}
