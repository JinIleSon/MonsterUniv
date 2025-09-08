package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Coll_engineeringDTO;
import util.DBHelper;
import util.Sql_coll_engineering;

public class Coll_engineeringDAO extends DBHelper{

	private final static Coll_engineeringDAO INSTANCE = new Coll_engineeringDAO();
	public static Coll_engineeringDAO getInstance() {
		return INSTANCE;
	}
	private Coll_engineeringDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// 기본 리스트 뿌려주기
	public List<Coll_engineeringDTO> selectAll(){
		List<Coll_engineeringDTO> dtoList = new ArrayList<Coll_engineeringDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_coll_engineering.SELECT_ARTICLE_ALL);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				Coll_engineeringDTO dto = new Coll_engineeringDTO();
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
