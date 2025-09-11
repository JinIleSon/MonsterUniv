package service;

import java.util.List;

import dao.Coll_scienceDAO;
import dto.Coll_scienceDTO;

public enum Coll_scienceService {

	INSTANCE;

	private Coll_scienceDAO dao = Coll_scienceDAO.getInstance();

	// 기본 리스트 뿌려주기
	public List<Coll_scienceDTO> findAll(){
		return dao.selectAll();
	}

}
