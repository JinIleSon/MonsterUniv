package service;

import java.util.List;

import dao.AA_noticeDAO;
import dto.AA_noticeDTO;

public enum Main_acadAffairsService {
	INSATCE;
	
	private AA_noticeDAO dao = AA_noticeDAO.getInstance();
	
	public List<AA_noticeDTO> findRecentThree() {
		return dao.selectAllThree();
	}
}
