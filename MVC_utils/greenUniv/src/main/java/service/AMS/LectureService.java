package service.AMS;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.AMS.LectureDAO;
import dto.AMS.LectureDTO;

public enum LectureService {

	INSTANCE;
	
	private LectureDAO dao = LectureDAO.getInstance();
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insert(LectureDTO dto) {
		dao.insert(dto);
	}
	
	public LectureDTO findByCode(String deptCode) {
		return dao.select(deptCode);
	}
	
	public List<LectureDTO> findAll(){
		return dao.selectAll();
	}
	
	public void modify(LectureDTO dto) {
		dao.modify(dto);
	}
	
	public void delete(String deptCode) {
		dao.delete(deptCode);
	}
}
