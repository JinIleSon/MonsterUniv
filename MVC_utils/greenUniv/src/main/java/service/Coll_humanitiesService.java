package service;

import java.util.List;

import dao.Coll_humanitiesDAO;
import dto.Coll_humanitiesDTO;

public enum Coll_humanitiesService {

	INSTANCE;

	private Coll_humanitiesDAO dao = Coll_humanitiesDAO.getInstance();

	// 기본 리스트 뿌려주기
	public List<Coll_humanitiesDTO> findAll(){
		return dao.selectAll();
	}

}
