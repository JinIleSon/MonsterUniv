package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Coll_educationDTO;
import util.DBHelper;
import util.Sql_coll_education;

public class Coll_educationDAO extends DBHelper{

	private final static Coll_educationDAO INSTANCE = new Coll_educationDAO();
	public static Coll_educationDAO getInstance() {
		return INSTANCE;
	}
	private Coll_educationDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// 기본 리스트 뿌려주기
	public List<Coll_educationDTO> selectAll(){
		List<Coll_educationDTO> dtoList = new ArrayList<Coll_educationDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_coll_education.SELECT_ARTICLE_ALL);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				Coll_educationDTO dto = new Coll_educationDTO();
				dto.setUnitCol(rs.getString("unitcol"));
				dto.setDeptName(rs.getString("deptname"));
				dto.setDean(rs.getString("dean"));
				dto.setDeptTel(rs.getString("depttel"));
				dto.setColcont(rs.getString("colcont"));
				
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	
}
