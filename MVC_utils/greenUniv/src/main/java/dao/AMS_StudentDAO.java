package dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS_studentDTO;
import util.DBHelper;
import util.Sql_lecture;

public class AMS_StudentDAO extends DBHelper {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private final static AMS_StudentDAO INSTANCE = new AMS_StudentDAO();
	public static AMS_StudentDAO getInstance() {
		return INSTANCE;
	}
	
	private AMS_StudentDAO() {}
	
	public void insert(AMS_studentDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_lecture.INSERT_STUDENT);
			psmt.setInt(1, dto.getSnum());
			psmt.setString(2, dto.getSregno());
			psmt.setString(3, dto.getSname());
			psmt.setString(4, dto.getSengname());
			psmt.setString(5, dto.getSgender());
			psmt.setString(6, dto.getSnation());
			psmt.setString(7, dto.getStel());
			psmt.setString(8, dto.getSemail());
			psmt.setString(9, dto.getSzip());
			psmt.setString(10, dto.getSaddr1());
			psmt.setString(11, dto.getSaddr2());
			psmt.setInt(12, dto.getEyear());
			psmt.setInt(13, dto.getGyear());
			psmt.setString(14, dto.getEsort());
			psmt.setString(15, dto.getEcol());
			psmt.setString(16, dto.getEdept());
			psmt.setString(17, dto.getEgrade());
			psmt.setString(18, dto.getEterm());
			psmt.setString(19, dto.getAdvprof());
			psmt.executeUpdate();
			
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
	}
}
