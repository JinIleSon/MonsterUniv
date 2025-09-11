package service;

import java.util.List;

import dao.ProfessorRegisterDAO;
import dto.ProfessorRegisterDTO;

public enum Professor_registerService {
	INSTANCE;
	
	private ProfessorRegisterDAO dao = ProfessorRegisterDAO.getInstance();
	
	//교수등록 담당학과
	public List<String> getColName(){
		return dao.listColName();
	}
	
	public List<String> getDeptName(){
		return dao.listDeptName();
	}
	
	//교수 신규 등록
	public void register(ProfessorRegisterDTO dto) {
		dao.inster(dto);
	}
}
