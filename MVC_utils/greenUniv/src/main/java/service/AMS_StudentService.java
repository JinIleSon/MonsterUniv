package service;

import dao.AMS_StudentDAO;
import dto.AMS_studentDTO;

public enum AMS_StudentService {
	INSTANCE;
	
	private AMS_StudentDAO dao = AMS_StudentDAO.getInstance();
	
	public void register(AMS_studentDTO dto) {
		dao.insert(dto);
	}
}
