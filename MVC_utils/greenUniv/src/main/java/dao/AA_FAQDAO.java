package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AA_FAQDTO;
import util.DBHelper;
import util.Sql_AA_FAQ;

public class AA_FAQDAO extends DBHelper{

	private final static AA_FAQDAO INSTANCE = new AA_FAQDAO();
	public static AA_FAQDAO getInstance() {
		return INSTANCE;
	}
	private AA_FAQDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	// 기본 리스트 뿌려주기
	public List<AA_FAQDTO> selectALL(){
		List<AA_FAQDTO> dtoList = new ArrayList<AA_FAQDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AA_FAQ.SELECT_ARTICLE_ALL);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				AA_FAQDTO dto = new AA_FAQDTO();
				dto.setId(rs.getInt(1));
				dto.setWhat(rs.getInt(2));
				dto.setComment(rs.getString(3));
				
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	
	
	
}
