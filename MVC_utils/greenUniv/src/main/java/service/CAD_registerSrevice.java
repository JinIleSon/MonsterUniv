package service;

import java.util.List;

import dao.CAD_registerDAO;
import dto.CAD_collegeDTO;
import dto.CAD_deptDTO;

public enum CAD_registerSrevice {

	INSTANCE;

	private CAD_registerDAO dao = CAD_registerDAO.getInstance();

	public List<String> getDeptName(){
		return dao.selectDeptName();
	}

	public void collRegister(CAD_collegeDTO dto) {
		dao.collInsert(dto);
	}

	public void deptRegister(CAD_deptDTO dto) {
		dao.deptInsert(dto);
	}
}
