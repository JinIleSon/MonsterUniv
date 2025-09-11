package service;

import java.util.List;

import dao.AA_schedulesDAO;
import dto.AA_schedulesDTO;

public enum AA_schedulesService {
	INSTANCE;
	
	private AA_schedulesDAO dao = AA_schedulesDAO.getInstance();
	
	public List<AA_schedulesDTO> findAllEvents() {
		return dao.selectAll();
	}
}
