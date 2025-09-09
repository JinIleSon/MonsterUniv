package service;

import java.util.List;

import dao.AA_FAQDAO;
import dto.AA_FAQDTO;

public enum AA_FAQService {

	INSTANCE;

	private AA_FAQDAO dao = AA_FAQDAO.getInstance();


	// 기본 리스트 뿌려주기
	public List<AA_FAQDTO> findALL(){
		return dao.selectALL();
	}
}
