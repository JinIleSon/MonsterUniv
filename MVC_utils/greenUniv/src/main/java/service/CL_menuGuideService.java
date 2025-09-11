package service;

import java.util.List;

import dao.CL_menuGuideDAO;
import dto.CL_menuGuideDTO;

public enum CL_menuGuideService {

	INSTANCE;

	private CL_menuGuideDAO dao = CL_menuGuideDAO.getInstance();


	// 기본 리스트 뿌려주기
	public List<CL_menuGuideDTO> findALL(){
		return dao.selectALL();
	}
}
