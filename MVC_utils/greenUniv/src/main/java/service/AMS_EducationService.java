package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.AMS_EducationDAO;
import dto.AMS_lectureDTO;
import dto.PagenationDTO;

public enum AMS_EducationService {

	INSTANCE;
	
	private AMS_EducationDAO dao = AMS_EducationDAO.getInstance();
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public PagenationDTO getPagenationInfo(String pg, String searchType, String keyword) {
		
		int total = 0;
		
		// 전체 게시물 갯수 구하기
		if (keyword == null || searchType == null) {
			total = dao.selectCountTotal();
		} else {
			total = dao.selectCountSearch(searchType, keyword);
		}
		
		// 마지막 페이지 번호 구하기
		int lastPageNum = 0;
		if (total % 10 == 0) {
			lastPageNum = total / 10;     // 10으로 나누어 떨어짐
		}else {
			lastPageNum = total / 10 + 1; // 10으로 나누어 떨어지지 않음
		}
		
		// 현재 페이지 번호 시작값 구하기
		int currentPage = 1;
		if (pg != null) {
			currentPage = Integer.parseInt(pg);
		}
		int start = (currentPage - 1) * 10;
		
		// 현재 페이지 그룹 구하기
		int currentPageGroup = (int) Math.ceil(currentPage / 10.0);
		int currentPageGroupStart = (currentPageGroup - 1) * 10 + 1;
		int currentPageGroupEnd = currentPageGroup * 10;
		
		if (currentPageGroupEnd > lastPageNum) {
			currentPageGroupEnd = lastPageNum;
		}
		
		// 현재 페이지 글 시작 번호 구하기
		int currentPageStartNum = total - (currentPage - 1) * 10;
		
		PagenationDTO dto = new PagenationDTO();
		dto.setTotal(total);
		dto.setStart(start);
		dto.setCurrentPage(currentPage);
		dto.setCurrentPageStartNum(currentPageStartNum);
		dto.setLastPageNum(lastPageNum);
		dto.setPageGroupStart(currentPageGroupStart);
		dto.setPageGroupEnd(currentPageGroupEnd);
		
		logger.debug("LectureService\n"+dto.toString());
		
		return dto;
	}
	
	public void insert(AMS_lectureDTO dto) {
		dao.insert(dto);
	}
	
	public AMS_lectureDTO findByCode(String deptCode) {
		return dao.select(deptCode);
	}
	
	public List<AMS_lectureDTO> findBySearch(int start, String searchType, String keyword) {
		return dao.selectWithSearch(start, searchType, keyword);
	}
	
	public List<AMS_lectureDTO> findAll(int start){
		return dao.selectAll(start);
	}
	
	public void modify(AMS_lectureDTO dto) {
		dao.modify(dto);
	}
	
	public void delete(String deptCode) {
		dao.delete(deptCode);
	}
}
