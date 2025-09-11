package service;

import java.util.List;

import dao.SA_curriculumDAO;
import dto.SA_curriculumDTO;

public enum SA_curriculumService {

	INSTANCE;

	private SA_curriculumDAO dao = SA_curriculumDAO.getInstance();

	// 기본 리스트 뿌려주기
	public List<SA_curriculumDTO> findAll1(String cCode){
		return dao.selectAll1(cCode);
	}
	public List<SA_curriculumDTO> findAll2(String cCode){
		return dao.selectAll2(cCode);
	}
	public List<SA_curriculumDTO> findAll3(String cCode){
		return dao.selectAll3(cCode);
	}
	public List<SA_curriculumDTO> findAll4(String cCode){
		return dao.selectAll4(cCode);
	}
	public List<SA_curriculumDTO> findAllCommon(String cCode){
		return dao.selectAllCommon(cCode);
	}


}
