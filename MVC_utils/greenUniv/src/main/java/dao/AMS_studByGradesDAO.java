package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS_studentDTO;
import util.DBHelper;
import util.Sql_AMS_sub;

public class AMS_studByGradesDAO extends DBHelper {

	private static final AMS_studByGradesDAO INSTANCE = new AMS_studByGradesDAO();
	public static AMS_studByGradesDAO getInstance() {
		return INSTANCE;
	}
	private AMS_studByGradesDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public List<AMS_studentDTO> selectAllWithGrade(int start, String egrade) {
		List<AMS_studentDTO> dtoList = new ArrayList<AMS_studentDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_sub.SELECT_STUDENT_ALL_WITH_GRADE);
			psmt.setString(1, egrade);
			psmt.setInt(2, start);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				AMS_studentDTO dto = new AMS_studentDTO();
				dto.setSnum(rs.getInt(1));
				dto.setSname(rs.getString(2));
				dto.setSregno(rs.getString(3));
				dto.setStel(rs.getString(4));
				dto.setSemail(rs.getString(5));
				dto.setEdept(rs.getString(6));
				dto.setEgrade(rs.getString(7));
				dto.setEterm(rs.getString(8));
				dto.setCondition(rs.getString(9));
				dtoList.add(dto);
			}
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	
	public List<AMS_studentDTO> selectStudentSearchWithGrade(int start, String egrade, String searchType, String keyword) {
		List<AMS_studentDTO> dtoList = new ArrayList<AMS_studentDTO>();
		
		StringBuilder sql = new StringBuilder(Sql_AMS_sub.SELECT_STUDENT_SEARCH_WITH_GRADE);
		
		if(searchType.equals("snum")) {
			sql.append(Sql_AMS_sub.AND_SNUM);
		} else if(searchType.equals("sname")) {
			sql.append(Sql_AMS_sub.AND_SNAME);
		}
		
		sql.append(Sql_AMS_sub.STUDENT_SEARCH_ORDER_SNUM); 
		sql.append(Sql_AMS_sub.SEARCH_OFFSET_ROW); 
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, egrade);
			psmt.setString(2, keyword);
			psmt.setInt(3, start);
			logger.debug("AMS_studByGradeSDAO - selectStudentSearchWithGrade");
			logger.debug(psmt.toString().substring(psmt.toString().indexOf(":")+2));
			rs = psmt.executeQuery();

			while(rs.next()) {
				AMS_studentDTO dto = new AMS_studentDTO();
				dto.setSnum(rs.getInt(1));
				dto.setSname(rs.getString(2));
				dto.setSregno(rs.getString(3));
				dto.setStel(rs.getString(4));
				dto.setSemail(rs.getString(5));
				dto.setEdept(rs.getString(6));
				dto.setEgrade(rs.getString(7));
				dto.setEterm(rs.getString(8));
				dto.setCondition(rs.getString(9));
				dtoList.add(dto);
			}
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	
	public int selectCountTotalWithGrade(String egrade) {
		int total = 0;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_sub.SELECT_STUDENT_COUNT_TOTAL_WITH_GRADE);
			psmt.setString(1, egrade);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	
	public int selectCountSearchWithGrade(String egrade, String searchType, String keyword) {
		int total = 0;
		StringBuilder sql = new StringBuilder(Sql_AMS_sub.SELECT_COUNTSTUDENT_SEARCH_WITH_GRADE);
		
		if(searchType.equals("snum")) {
			sql.append(Sql_AMS_sub.AND_SNUM);
		} else if(searchType.equals("sname")) {
			sql.append(Sql_AMS_sub.AND_SNAME);
		}
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, egrade);
			if(keyword != null && !keyword.trim().isEmpty()) {
				psmt.setString(2, "%" + keyword + "%");
			}
			logger.debug("AMS_studByGradeSDAO - selectCountSearchWithGrade");
			logger.debug(psmt.toString().substring(psmt.toString().indexOf(":")+2));
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
}
