package service;

import dao.ProfessorRegisterDAO;
import dto.ProfessorRegisterDTO;

public enum Professor_registerService {
	INSTANCE;
	
	private ProfessorRegisterDAO dao = ProfessorRegisterDAO.getInstance();
	
	public void register(ProfessorRegisterDTO dto) {
		dao.inster(dto);
	}
}
