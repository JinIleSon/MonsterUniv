package dao;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS_courseDTO;
import util.DBHelper;
import util.Sql_AMS_sub;

public class AMS_CourseDAO extends DBHelper {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	private final static AMS_CourseDAO INSTANCE = new AMS_CourseDAO();
	public static AMS_CourseDAO getInstance() {
		return INSTANCE;
	}

	private AMS_CourseDAO() {}
	
	public int selectCountTotal() {
		int total = 0;

		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_AMS_sub.SELECT_COURSE_COUNT_TOTAL);
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	
	public List<AMS_courseDTO> selectAll(int start) {
		List<AMS_courseDTO> dtoList = new ArrayList<AMS_courseDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_sub.SELECT_COURSE);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();			
			
			while(rs.next()) {
				AMS_courseDTO dto = new AMS_courseDTO();
				dto.setSemester(rs.getString(1));
				dto.setSnum(rs.getInt(2));
				dto.setSname(rs.getString(3));
				dto.setYear(rs.getString(4));
				dto.setEdept(rs.getString(5));
				dto.setDeptcode(rs.getString(6));
				dto.setLname(rs.getString(7));
				dto.setCompdiv(rs.getString(8));
				dto.setProf(rs.getString(9));
				dto.setGrade(rs.getInt(10));
				
				LocalDate today = LocalDate.now();
				dto.setApplication(today.toString());				
				dtoList.add(dto);
			}
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

	public int selectCountSearch(String searchType, String keyword) {
		int total = 0;
		StringBuilder sql = new StringBuilder(Sql_AMS_sub.SELECT_COURSECOUNT_SEARCH);
		
		if(searchType.equals("lname")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_LNAME);
		} else if(searchType.equals("prof")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_PROF);
		}

		try {
			if(keyword != null && !keyword.trim().isEmpty()) {
				conn = getConnection();
				psmt = conn.prepareStatement(sql.toString());
				psmt.setString(1, "%" + keyword + "%");
				rs = psmt.executeQuery();
			} else {
				conn = getConnection();
				psmt = conn.prepareStatement(sql.toString());
				rs = psmt.executeQuery();
			}


			if(rs.next()) {
				total = rs.getInt(1);
			}

			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	
	public List<AMS_courseDTO> selectCourseSearch(int start, String searchType, String keyword) {
		List<AMS_courseDTO> dtoList = new ArrayList<AMS_courseDTO>();
		
		StringBuilder sql = new StringBuilder(Sql_AMS_sub.SELECT_COURSE_SEARCH);
		
		if(searchType.equals("lname")) {
			sql.append(Sql_AMS_sub.COURSE_SEARCH_WHERE_LNAME);
		} else if(searchType.equals("prof")) {
			sql.append(Sql_AMS_sub.COURSE_SEARCH_WHERE_PROF);
		}
		
		sql.append(Sql_AMS_sub.COURSE_SEARCH_ORDER_DEPTCODE); 
		sql.append(Sql_AMS_sub.SEARCH_OFFSET_ROW); 
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());

			if(keyword != null && !keyword.trim().isEmpty()) {
				psmt.setString(1, "%"+keyword+"%");
				psmt.setInt(2, start);
				rs = psmt.executeQuery();
			} else {
				psmt.setInt(1, start);
				rs = psmt.executeQuery();
			}


			while(rs.next()) {
				AMS_courseDTO dto = new AMS_courseDTO();
				dto.setSemester(rs.getString(1));
				dto.setSnum(rs.getInt(2));
				dto.setSname(rs.getString(3));
				dto.setYear(rs.getString(4));
				dto.setEdept(rs.getString(5));
				dto.setDeptcode(rs.getString(6));
				dto.setLname(rs.getString(7));
				dto.setCompdiv(rs.getString(8));
				dto.setProf(rs.getString(9));
				dto.setGrade(rs.getInt(10));
				
				LocalDate today = LocalDate.now();
				dto.setApplication(today.toString());		
				dtoList.add(dto);
			}

			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
}
