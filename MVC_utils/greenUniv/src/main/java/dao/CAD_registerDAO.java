package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.CAD_collegeDTO;
import dto.CAD_deptDTO;
import util.DBHelper;
import util.Sql_CAD_register;

public class CAD_registerDAO extends DBHelper{
	
	private final static CAD_registerDAO INSTANCE = new CAD_registerDAO();
	public static CAD_registerDAO getInstance() {
		return INSTANCE;
	}
	
	private CAD_registerDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());	
	
	public List<String> selectDeptName() {
		List<String> deptList = new ArrayList<String>();
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_CAD_register.SELECT_DEPTNAME);
			
			while(rs.next()) {
				deptList.add(rs.getString("colname"));
			}
			
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return deptList;
	}
	
	public void collInsert(CAD_collegeDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_CAD_register.INSERT_COLLEGE);
			psmt.setString(1, dto.getColname());
			psmt.setString(2, dto.getColeng());
			psmt.setString(3, dto.getColtit());
			psmt.setString(4, dto.getColcont());
			
			psmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
	}
	
	public void deptInsert(CAD_deptDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_CAD_register.INSERT_DEPT);
			psmt.setString(1, dto.getDeptname());
			psmt.setString(2, dto.getEstyear());
			psmt.setString(3, dto.getDepttel());
			psmt.setString(4, dto.getUnitcol());
			psmt.setString(5, dto.getEngname());
			psmt.setString(6, dto.getDean());
			psmt.setString(7, dto.getDeptoff());
			
			psmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
	}
}
