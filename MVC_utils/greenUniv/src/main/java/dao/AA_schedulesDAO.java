package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AA_schedulesDTO;
import util.DBHelper;
import util.Sql_AA_schedules;

public class AA_schedulesDAO extends DBHelper {
	private static final AA_schedulesDAO INSTANCE = new AA_schedulesDAO();
	public static AA_schedulesDAO getInstance() {
		return INSTANCE;
	}
	private AA_schedulesDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public List<AA_schedulesDTO> selectAll() {
		List<AA_schedulesDTO> dtoList = new ArrayList<AA_schedulesDTO>();
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_AA_schedules.SELECT_ALL_SCHEDULES);
			logger.debug("AA_schedulesDAO - selectAll");
			while (rs.next()) {
				AA_schedulesDTO dto = new AA_schedulesDTO();
				dto.setTitle(rs.getString("content"));
				dto.setStart(rs.getString("date"));
				dto.setEnd(rs.getString("date"));
				
				logger.debug("dto : "+dto.toString());
				
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
		return dtoList;
	}
}
