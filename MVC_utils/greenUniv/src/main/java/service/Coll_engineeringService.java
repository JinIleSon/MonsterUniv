package service;

import java.util.List;

import dao.Coll_engineeringDAO;
import dto.Coll_engineeringDTO;

public enum Coll_engineeringService {
	
	INSTANCE;
	
	private Coll_engineeringDAO dao = Coll_engineeringDAO.getInstance();

	// 기본 리스트 뿌려주기
	public List<Coll_engineeringDTO> findAll(){
		return dao.selectAll();
	}
		
}
