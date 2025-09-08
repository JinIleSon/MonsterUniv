package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.CAD_deptListDTO;
import util.DBHelper;
import util.Sql_CAD_deptList;

public class CAD_deptListDAO extends DBHelper{
	private static CAD_deptListDAO instance = new CAD_deptListDAO();
	public static CAD_deptListDAO getInstance (){
		return instance;
	}
	private CAD_deptListDAO () {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public List<CAD_deptListDTO> select(){
		List<CAD_deptListDTO> dtoList = new ArrayList<>();
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_CAD_deptList.SELECT_DEPTLIST);
			
			while(rs.next()) {
				
				CAD_deptListDTO dto = new CAD_deptListDTO();
				
				dto.setDeptnum(rs.getInt(1));
				dto.setUnitcol(rs.getString(2));
				dto.setDeptname(rs.getString(3));
				dto.setDean(rs.getString(4));
				dto.setDepttel(rs.getString(5));
				dto.setProCount(rs.getInt(6));
				dto.setStuCount(rs.getInt(7));
				dto.setLecCount(rs.getInt(8));
				
				dtoList.add(dto);
			}
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	
}
