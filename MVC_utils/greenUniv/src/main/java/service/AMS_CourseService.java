package service;

import java.util.List;

import dao.AMS_CourseDAO;
import dto.AMS_courseDTO;
import dto.PagenationDTO;

public enum AMS_CourseService {
	INSTANCE;
<<<<<<< HEAD

	private AMS_LectureDAO dao = AMS_LectureDAO.getInstance();

=======
	
	private AMS_CourseDAO dao = AMS_CourseDAO.getInstance();
	
>>>>>>> 6561f2c7f8ec4f6dfbee052a4bbabca5bf0e32a6
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
<<<<<<< HEAD

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
=======
	
	public List<AMS_courseDTO> findAllSearch(int start, String searchType, String keyword) {
		return dao.selectCourseSearch(start, searchType, keyword);
	}
	
	public List<AMS_courseDTO> findAll(int start) {
>>>>>>> 6561f2c7f8ec4f6dfbee052a4bbabca5bf0e32a6
		return dao.selectAll(start);
	}
}
