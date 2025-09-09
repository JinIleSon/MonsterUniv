package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.SA_gradeDAO;
import dto.SA_gradeDTO;

public enum SA_gradeService {

	INSTANCE;

	private SA_gradeDAO dao = SA_gradeDAO.getInstance();

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	public void insert(SA_gradeDTO dto) {
		dao.insert(dto);
	}

	public SA_gradeDTO select(int snum) {
		return dao.select(snum);
	}

	public List<SA_gradeDTO> selectAll() {
		return dao.selectAll();
	}

	public void modify(SA_gradeDTO dto) {
		dao.modify(dto);
	}

	public void delete(int snum) {
		dao.delete(snum);
	}
}
