package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS_lectureDTO;
import util.DBHelper;
import util.Sql_lecture;

public class AMS_LectureDAO extends DBHelper {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	private final static AMS_LectureDAO INSTANCE = new AMS_LectureDAO();
	public static AMS_LectureDAO getInstance() {
		return INSTANCE;
	}

	private AMS_LectureDAO() {}

	public void insert(AMS_lectureDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_lecture.INSERT_LECTURE);
			psmt.setString(1, dto.getDeptCode());
			psmt.setString(2, dto.getYear());
			psmt.setString(3, dto.getSemester());
			psmt.setString(4, dto.getCompDiv());
			psmt.setString(5, dto.getLname());
			psmt.setString(6, dto.getLexpl());
			psmt.setString(7, dto.getOpenCol());
			psmt.setString(8, dto.getOpenMaj());
			psmt.setInt(9, dto.getGrade());
			psmt.setString(10, dto.getProf());
			psmt.setString(11, dto.getYclasS());
			psmt.setString(12, dto.getYclasE());
			psmt.setString(13, dto.getTimeS());
			psmt.setString(14, dto.getTimeE());
			psmt.setString(15, dto.getTimeD());
			psmt.setString(16, dto.getEvaWay());
			psmt.setString(17, dto.getBook());
			psmt.setString(18, dto.getRoom());
			psmt.setInt(19, dto.getMaxNum());
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

	public List<AMS_lectureDTO> selectAll(int start) {
		List<AMS_lectureDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_lecture.SELECT_LECTURE_ALL);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				AMS_lectureDTO dto = new AMS_lectureDTO();
				dto.setDeptCode(rs.getString(1));
				dto.setYear(rs.getString(2));
				dto.setSemester(rs.getString(3));
				dto.setCompDiv(rs.getString(4));
				dto.setLname(rs.getString(5));
				dto.setLexpl(rs.getString(6));
				dto.setOpenCol(rs.getString(7));
				dto.setOpenMaj(rs.getString(8));
				dto.setGrade(rs.getInt(9));
				dto.setProf(rs.getString(10));
				dto.setYclasS(rs.getString(11));
				dto.setYclasE(rs.getString(12));
				dto.setTimeS(rs.getString(13).substring(10,16));
				dto.setTimeE(rs.getString(14).substring(10,16));
				dto.setTimeD(rs.getString(15));
				dto.setEvaWay(rs.getString(16));
				dto.setBook(rs.getString(17));
				dto.setRoom(rs.getString(18));
				dto.setMaxNum(rs.getInt(19));
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

	public List<AMS_lectureDTO> selectLectureSearch(int start, String searchType, String keyword) {
		List<AMS_lectureDTO> dtoList = new ArrayList<>();

		StringBuilder sql = new StringBuilder(Sql_lecture.SELECT_LECTURE_SEARCH);

		if(searchType.equals("lname")) {
			sql.append(Sql_lecture.SEARCH_WHERE_LNAME);
		} else if(searchType.equals("prof")) {
			sql.append(Sql_lecture.SEARCH_WHERE_PROF);
		}
		
		sql.append(Sql_lecture.SEARCH_ORDER_DEPTCODE); 
		sql.append(Sql_lecture.SEARCH_OFFSET_ROW); 
		
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
				AMS_lectureDTO dto = new AMS_lectureDTO();
				dto.setDeptCode(rs.getString(1));
				dto.setYear(rs.getString(2));
				dto.setSemester(rs.getString(3));
				dto.setCompDiv(rs.getString(4));
				dto.setLname(rs.getString(5));
				dto.setLexpl(rs.getString(6));
				dto.setOpenCol(rs.getString(7));
				dto.setOpenMaj(rs.getString(8));
				dto.setGrade(rs.getInt(9));
				dto.setProf(rs.getString(10));
				dto.setYclasS(rs.getString(11));
				dto.setYclasE(rs.getString(12));
				dto.setTimeS(rs.getString(13).substring(10,16));
				dto.setTimeE(rs.getString(14).substring(10,16));
				dto.setTimeD(rs.getString(15));
				dto.setEvaWay(rs.getString(16));
				dto.setBook(rs.getString(17));
				dto.setRoom(rs.getString(18));
				dto.setMaxNum(rs.getInt(19));
				dtoList.add(dto);
			}

			closeAll();
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
}
