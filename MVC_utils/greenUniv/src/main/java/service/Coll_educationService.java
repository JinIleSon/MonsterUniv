package service;

import java.util.List;

import dao.Coll_educationDAO;
import dto.Coll_educationDTO;

public enum Coll_educationService {

	INSTANCE;

	private Coll_educationDAO dao = Coll_educationDAO.getInstance();

	// 기본 리스트 뿌려주기
	public List<Coll_educationDTO> findAll(){
		return dao.selectAll();
	}

}
