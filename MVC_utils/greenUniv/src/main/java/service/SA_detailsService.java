package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.SA_detailsDAO;
import dto.SA_detailsDTO;

public enum SA_detailsService {

	INSTANCE;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private SA_detailsDAO dao = SA_detailsDAO.getInstance();
	
	public void register(SA_detailsDTO dto) {
		dao.insert(dto);
	}
	
	public List<SA_detailsDTO> findWithSnum(int snum) {
		return dao.selectWithSnum(snum);
	}
	
	public List<SA_detailsDTO> findAllWithKeywords(int snum, String year, String semester) {
		return dao.selectAllWithKeywords(snum, year, semester);
	}
	
	public int findCount(int snum) {
		return dao.countWithSnum(snum);
	}
	
	public int countWithKeywords(int snum, String year, String semester) {
		return dao.countWithKeywords(snum, year, semester);
	}
	
	public void cancel(int snum, String deptCode) {
		dao.delete(snum, deptCode);
	}
}
