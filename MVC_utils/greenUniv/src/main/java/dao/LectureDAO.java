package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.LectureDTO;
import service.LectureService;
import util.DBHelper;
import util.Sql_lecture;

public class LectureDAO extends DBHelper { //여기있는 Sql -> Sql_lecture
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private final static LectureDAO INSTANCE = new LectureDAO();
	public static LectureDAO getInstance() {
		return INSTANCE;
	}
	
	private LectureDAO() {}
	
	public void insert(LectureDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_lecture.INSERT_LECTURE);
			psmt.setString(1, dto.getDeptcode());
			psmt.setString(2, dto.getYear());
			psmt.setString(3, dto.getSemester());
			psmt.setString(4, dto.getCompdiv());
			psmt.setString(5, dto.getLname());
			psmt.setString(6, dto.getLexpl());
			psmt.setString(7, dto.getOpencol());
			psmt.setString(8, dto.getOpenmaj());
			psmt.setInt(9, dto.getGrade());
			psmt.setString(10, dto.getProf());
			psmt.setString(11, dto.getYclass());
			psmt.setString(12, dto.getYclase());
			psmt.setString(13, dto.getTimes());
			psmt.setString(14, dto.getTimee());
			psmt.setString(15, dto.getTimed());
			psmt.setString(16, dto.getEvaway());
			psmt.setString(17, dto.getBook());
			psmt.setString(18, dto.getRoom());
			psmt.setInt(19, dto.getMaxnum());
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
			rs = stmt.executeQuery(Sql_lecture.SELECT_LECTURE_COUNT_TOTAL);
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	
	public void select(LectureDTO dto) {
		
	}
	
	public List<LectureDTO> selectAll(int start) {
		List<LectureDTO> dtoList = new ArrayList<LectureDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_lecture.SELECT_LECTURE_ALL);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();

			while(rs.next()) {
				LectureDTO dto = new LectureDTO();
				dto.setDeptcode(rs.getString(1));
				dto.setYear(rs.getString(2));
				dto.setSemester(rs.getString(3));
				dto.setCompdiv(rs.getString(4));	
				dto.setLname(rs.getString(5));
				dto.setLexpl(rs.getString(6));
				dto.setOpencol(rs.getString(7));
				dto.setOpenmaj(rs.getString(8));
				dto.setGrade(rs.getInt(9));						
				dto.setProf(rs.getString(10));			
				dto.setYclass(rs.getString(11));
				dto.setYclase(rs.getString(12));
				dto.setTimes(rs.getString(13).substring(10,16));
				dto.setTimee(rs.getString(14).substring(10,16));
				dto.setTimed(rs.getString(15));
				dto.setEvaway(rs.getString(16));
				dto.setBook(rs.getString(17));
				dto.setRoom(rs.getString(18));
				dto.setMaxnum(rs.getInt(19));		
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
		StringBuilder sql = new StringBuilder(Sql_lecture.SELECT_COUNT_SEARCH);
		
		if(searchType.equals("lname")) {
			sql.append(Sql_lecture.SEARCH_WHERE_LNAME);
		} else if(searchType.equals("prof")) {
			sql.append(Sql_lecture.SEARCH_WHERE_PROF);
		}
//		else if(searchType.equals("all")) {
//			sql.append(Sql_lecture.SEARCH_WHERE_ALL);
//		}
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
			logger.error(e.getMessage() + "버그 selectCountSearch");
		}
		return total;
	}
	
	public List<LectureDTO> selectLectureSearch(int start, String searchType, String keyword) {
		List<LectureDTO> dtoList = new ArrayList<LectureDTO>();
		
		StringBuilder sql = new StringBuilder(Sql_lecture.SELECT_LECTURE_SEARCH);
		
		if(searchType.equals("lname")) {
			sql.append(Sql_lecture.SEARCH_WHERE_LNAME);
		} else if(searchType.equals("prof")) {
			sql.append(Sql_lecture.SEARCH_WHERE_PROF);
		}
//		else if(searchType.equals("all")) {
//			sql.append(Sql_lecture.SEARCH_WHERE_ALL);
//		}
		
		sql.append(Sql_lecture.SEARCH_ORDER_DEPTCODE); 
		sql.append(Sql_lecture.SEARCH_OFFEST_ROW); 
		
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
				LectureDTO dto = new LectureDTO();
				dto.setDeptcode(rs.getString(1));
				dto.setYear(rs.getString(2));
				dto.setSemester(rs.getString(3));
				dto.setCompdiv(rs.getString(4));	
				dto.setLname(rs.getString(5));
				dto.setLexpl(rs.getString(6));
				dto.setOpencol(rs.getString(7));
				dto.setOpenmaj(rs.getString(8));
				dto.setGrade(rs.getInt(9));						
				dto.setProf(rs.getString(10));			
				dto.setYclass(rs.getString(11));
				dto.setYclase(rs.getString(12));
				dto.setTimes(rs.getString(13).substring(10,16));
				dto.setTimee(rs.getString(14).substring(10,16));
				dto.setTimed(rs.getString(15));
				dto.setEvaway(rs.getString(16));
				dto.setBook(rs.getString(17));
				dto.setRoom(rs.getString(18));
				dto.setMaxnum(rs.getInt(19));
				dtoList.add(dto);
			}
			
			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage() + "버그 selectLectureSearch");
		}
		return dtoList;
	}
	public void update(LectureDTO dto) {
		
	}
	
	public void delete(LectureDTO dto) {
		
	}
}
