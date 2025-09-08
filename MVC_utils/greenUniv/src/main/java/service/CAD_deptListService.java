package service;

import java.util.List;

import dao.CAD_deptListDAO;
import dto.CAD_deptListDTO;

public enum CAD_deptListService {
	
	INSTANCE;
	
	private CAD_deptListDAO dao = CAD_deptListDAO.getInstance();
	
	public List<CAD_deptListDTO> deptList(){
		return dao.select();
	}
}
