package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Coll_graduateSchoolDTO;
import util.DBHelper;
import util.Sql_coll_graduateSchool;

public class Coll_graduateSchoolDAO extends DBHelper{

	private final static Coll_graduateSchoolDAO INSTANCE = new Coll_graduateSchoolDAO();
	public static Coll_graduateSchoolDAO getInstance() {
		return INSTANCE;
	}
	private Coll_graduateSchoolDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// 기본 리스트 뿌려주기
	public List<Coll_graduateSchoolDTO> selectAll(){
		List<Coll_graduateSchoolDTO> dtoList = new ArrayList<Coll_graduateSchoolDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_coll_graduateSchool.SELECT_ARTICLE_ALL);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				Coll_graduateSchoolDTO dto = new Coll_graduateSchoolDTO();
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
