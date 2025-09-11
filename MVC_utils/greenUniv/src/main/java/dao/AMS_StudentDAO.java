package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS_studentDTO;
import util.DBHelper;
import util.Sql_AMS_sub;

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
			psmt = conn.prepareStatement(Sql_AMS_sub.INSERT_STUDENT);
			psmt.setInt(1, dto.getSnum());
			psmt.setString(2, dto.getSname());
			psmt.setString(3, dto.getSgender());
			psmt.setString(4, dto.getStel());
			psmt.setString(5, dto.getSzip());
			psmt.setString(6, dto.getSaddr1());
			psmt.setString(7, dto.getSaddr2());
			psmt.setString(8, dto.getSregno());
			psmt.setString(9, dto.getSengname());			
			psmt.setString(10, dto.getSnation());						
			psmt.setString(11, dto.getSemail());			
			psmt.setInt(12, dto.getEyear());
			psmt.setString(13, dto.getEsort());
			psmt.setString(14, dto.getEgrade());
			psmt.setString(15, dto.getEterm());
			psmt.setInt(16, dto.getGyear());	
			psmt.setString(17, dto.getEcol());
			psmt.setString(18, dto.getEdept());	
			psmt.setString(19, dto.getAdvprof());		
			psmt.executeUpdate();
			
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
	}
	
	public int selectCountTotal() {
		int total = 0;
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_AMS_sub.SELECT_STUDENT_COUNT_TOTAL);
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	
	public List<AMS_studentDTO> selectAll(int start) {
		List<AMS_studentDTO> dtoList = new ArrayList<AMS_studentDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_sub.SELECT_STUDENT_ALL);
			psmt.setInt(1, start);
			
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
	
	public int selectCountSearch(String searchType, String keyword) {
		int total = 0;
		StringBuilder sql = new StringBuilder(Sql_AMS_sub.SELECT_COUNTSTUDENT_SEARCH);
		
		if(searchType.equals("snum")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_LNAME);
		} else if(searchType.equals("sname")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_SNAME);
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
	
	public List<AMS_studentDTO> selectStudentSearch(int start, String searchType, String keyword) {
		List<AMS_studentDTO> dtoList = new ArrayList<AMS_studentDTO>();
		
		StringBuilder sql = new StringBuilder(Sql_AMS_sub.SELECT_STUDENT_SEARCH);
		
		if(searchType.equals("snum")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_SNUM);
		} else if(searchType.equals("sname")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_SNAME);
		}
		
		sql.append(Sql_AMS_sub.STUDENT_SEARCH_ORDER_SNUM); 
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
	

	// studByGrades
	public List<AMS_studentDTO> selectAllWithGrade(int start, String egrade) {
		List<AMS_studentDTO> dtoList = new ArrayList<AMS_studentDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_sub.SELECT_STUDENT_ALL);
			psmt.setInt(1, start);
			
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
		
		StringBuilder sql = new StringBuilder(Sql_AMS_sub.SELECT_STUDENT_SEARCH);
		
		if(searchType.equals("snum")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_SNUM);
		} else if(searchType.equals("sname")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_SNAME);
		}
		
		sql.append(Sql_AMS_sub.STUDENT_SEARCH_ORDER_SNUM); 
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
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_AMS_sub.SELECT_STUDENT_COUNT_TOTAL);
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	
	public int selectCountSearchWtihGrade(String searchType, String keyword) {
		int total = 0;
		StringBuilder sql = new StringBuilder(Sql_AMS_sub.SELECT_COUNTSTUDENT_SEARCH);
		
		if(searchType.equals("snum")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_LNAME);
		} else if(searchType.equals("sname")) {
			sql.append(Sql_AMS_sub.SEARCH_WHERE_SNAME);
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
}
