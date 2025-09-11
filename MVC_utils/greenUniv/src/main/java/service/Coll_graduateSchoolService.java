package service;

import java.util.List;

import dao.Coll_graduateSchoolDAO;
import dto.Coll_graduateSchoolDTO;

public enum Coll_graduateSchoolService {

	INSTANCE;

	private Coll_graduateSchoolDAO dao = Coll_graduateSchoolDAO.getInstance();

	// 기본 리스트 뿌려주기
	public List<Coll_graduateSchoolDTO> findAll(){
		return dao.selectAll();
	}

}
