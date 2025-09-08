package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_regDTO;
import util.DBHelper;
import util.Sql;
import util.Sql_studAssist;

public class SA_regDAO extends DBHelper {
	private static final SA_regDAO INSTANCE = new SA_regDAO();

	public static SA_regDAO getInstance() {
		return INSTANCE;
	}

	private SA_regDAO() {
	}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

<<<<<<< HEAD
	public void insert(SA_regDTO dto) {

=======
	public void insertAndPlusNowNum(int snum, SA_regDTO dto) {
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			psmt = conn.prepareStatement(Sql_studAssist.INSERT_TO_DETAIL);
			psmt.setInt(1, snum);
			psmt.setString(2, dto.getYclasS());
			psmt.setString(3, dto.getSemester());
			psmt.setString(4, dto.getDeptCode());
			psmt.setString(5, dto.getLname());
			psmt.setString(6, dto.getYear());
			psmt.setString(7, dto.getProf());
			psmt.setInt(8, dto.getGrade());
			psmt.setString(9, dto.getCompDiv());
			psmt.setString(10, dto.getTimeS());
			psmt.setString(11, dto.getTimeE());
			psmt.setString(12, dto.getTimeD());
			psmt.setString(13, dto.getRoom());
			psmt.setString(14, dto.getLecture_hash());
			psmt.executeUpdate();
			
			stmt = conn.createStatement();
			stmt.executeUpdate(Sql_studAssist.PLUS_NOWNUM + "'"+dto.getDeptCode()+"'");
			conn.commit();
			closeAll();
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
>>>>>>> origin/test
	}

	public SA_regDTO select(String deptCode) {
		SA_regDTO dto = null;
		
		try {
			conn = getConnection();
<<<<<<< HEAD
			psmt = conn.prepareStatement(Sql.SELECT_ALL_LECTURES + Sql.WITH_DEPTCODE);
=======
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_ALL_LECTURES + Sql_studAssist.WITH_DEPTCODE);
>>>>>>> origin/test
			psmt.setString(1, deptCode);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto = new SA_regDTO();
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
				dto.setTimeS(rs.getString(13));
				dto.setTimeE(rs.getString(14));
				dto.setTimeD(rs.getString(15));
				dto.setEvaWay(rs.getString(16));
				dto.setBook(rs.getString(17));
				dto.setRoom(rs.getString(18));
				dto.setMaxNum(rs.getInt(19));
<<<<<<< HEAD
				dto.setNowNum(rs.getInt(19));
			}
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
		return null;
	}

	public int selectCountTotal() {
=======
				dto.setNowNum(rs.getInt(20));
				dto.setLecture_hash(rs.getString(21));
			}
			logger.debug("SA_regDAO - select\n"+dto.toString());
			closeAll();
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
		return dto;
	}

	public int selectCountTotal(String cCode) {
>>>>>>> origin/test
		int count = 0;

		try {
			conn = getConnection();
<<<<<<< HEAD
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_studAssist.SELECT_COUNT);
=======
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_COUNT_WITH_CCODE);
			psmt.setString(1, cCode);
			rs = psmt.executeQuery();
>>>>>>> origin/test
			if (rs.next()) {
				count = rs.getInt(1);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		logger.debug("count : " + count);
		return count;
	}

<<<<<<< HEAD
	public int selectCountSearch(String searchType, String keyword) {
		int count = 0;

		StringBuilder sql = new StringBuilder(Sql_studAssist.SELECT_COUNT);
		switch (searchType) {
		case "openMaj":
			sql.append(Sql_studAssist.WITH_OPENMAJ);
			break;

		case "deptCode":
			sql.append(Sql_studAssist.WITH_DEPTCODE);
			break;

		case "lname":
			sql.append(Sql_studAssist.WITH_LNAME);
			break;

		case "year":
			sql.append(Sql_studAssist.WITH_YEAR);
			break;

		case "prof":
			sql.append(Sql_studAssist.WITH_PROF);
			break;

		case "compDiv":
			sql.append(Sql_studAssist.WITH_COMPDIV);
			break;

		case "grade":
			sql.append(Sql_studAssist.WITH_GRADE);
			break;

		case "room":
			sql.append(Sql_studAssist.WITH_ROOM);
=======
	public int selectCountSearch(String cCode, String searchType, String keyword) {
		int count = 0;

		StringBuilder sql = new StringBuilder(Sql_studAssist.SELECT_COUNT_WITH_CCODE);
		switch (searchType) {
		case "openMaj":
			sql.append(Sql_studAssist.AND_OPENMAJ);
			break;

		case "deptCode":
			sql.append(Sql_studAssist.AND_DEPTCODE);
			break;

		case "lname":
			sql.append(Sql_studAssist.AND_LNAME);
			break;

		case "year":
			sql.append(Sql_studAssist.AND_YEAR);
			break;

		case "prof":
			sql.append(Sql_studAssist.AND_PROF);
			break;

		case "compDiv":
			sql.append(Sql_studAssist.AND_COMPDIV);
			break;

		case "grade":
			sql.append(Sql_studAssist.AND_GRADE);
			break;

		case "room":
			sql.append(Sql_studAssist.AND_ROOM);
>>>>>>> origin/test
			break;

		default:
			break;
		}

		logger.debug(sql.toString());
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
<<<<<<< HEAD
			psmt.setString(1, "%" + keyword + "%");
=======
			psmt.setString(1, cCode);
			psmt.setString(2, "%" + keyword + "%");
>>>>>>> origin/test
			rs = psmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return count;
	}

<<<<<<< HEAD
	public List<SA_regDTO> selectWithSearch(int start, String searchType, String keyword) {
		List<SA_regDTO> dtoList = new ArrayList<SA_regDTO>();

		StringBuilder sql = new StringBuilder(Sql_studAssist.SELECT_ALL_LECTURES);
		switch (searchType) {
		case "openMaj":
			sql.append(Sql_studAssist.WITH_OPENMAJ);
			break;

		case "deptCode":
			sql.append(Sql_studAssist.WITH_DEPTCODE);
			break;

		case "lname":
			sql.append(Sql_studAssist.WITH_LNAME);
			break;

		case "year":
			sql.append(Sql_studAssist.WITH_YEAR);
			break;

		case "prof":
			sql.append(Sql_studAssist.WITH_PROF);
			break;

		case "compDiv":
			sql.append(Sql_studAssist.WITH_COMPDIV);
			break;

		case "grade":
			sql.append(Sql_studAssist.WITH_GRADE);
			break;

		case "room":
			sql.append(Sql_studAssist.WITH_ROOM);
=======
	public List<SA_regDTO> selectWithSearch(String cCode, int start, String searchType, String keyword) {
		List<SA_regDTO> dtoList = new ArrayList<SA_regDTO>();

		StringBuilder sql = new StringBuilder(Sql_studAssist.SELECT_ALL_LECTURES_WITH_CCODE);
		switch (searchType) {
		case "openMaj":
			sql.append(Sql_studAssist.AND_OPENMAJ);
			break;

		case "deptCode":
			sql.append(Sql_studAssist.AND_DEPTCODE);
			break;

		case "lname":
			sql.append(Sql_studAssist.AND_LNAME);
			break;

		case "year":
			sql.append(Sql_studAssist.AND_YEAR);
			break;

		case "prof":
			sql.append(Sql_studAssist.AND_PROF);
			break;

		case "compDiv":
			sql.append(Sql_studAssist.AND_COMPDIV);
			break;

		case "grade":
			sql.append(Sql_studAssist.AND_GRADE);
			break;

		case "room":
			sql.append(Sql_studAssist.AND_ROOM);
>>>>>>> origin/test
			break;

		default:
			break;
		}
		sql.append(Sql_studAssist.SEARCH_ORDER_DEPTCODE);
		sql.append(Sql_studAssist.SEARCH_OFFET_ROW);

		logger.debug(sql.toString());
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
<<<<<<< HEAD
			psmt.setString(1, "%" + keyword + "%");
			psmt.setInt(2, start);
=======
			psmt.setString(1, cCode);
			psmt.setString(2, "%" + keyword + "%");
			psmt.setInt(3, start);
>>>>>>> origin/test
			rs = psmt.executeQuery();

			while (rs.next()) {
				SA_regDTO dto = new SA_regDTO();
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
				dto.setTimeS(rs.getString(13));
				dto.setTimeE(rs.getString(14));
				dto.setTimeD(rs.getString(15));
				dto.setEvaWay(rs.getString(16));
				dto.setBook(rs.getString(17));
				dto.setRoom(rs.getString(18));
				dto.setMaxNum(rs.getInt(19));
				dto.setNowNum(rs.getInt(20));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}

		return dtoList;
	}

<<<<<<< HEAD
	public List<SA_regDTO> selectAll(int start) {
		List<SA_regDTO> dtoList = new ArrayList<SA_regDTO>();

		StringBuilder sql = new StringBuilder(Sql_studAssist.SELECT_ALL_LECTURES);
=======
	public List<SA_regDTO> selectAll(int start, String cCode) {
		List<SA_regDTO> dtoList = new ArrayList<SA_regDTO>();

		StringBuilder sql = new StringBuilder(Sql_studAssist.SELECT_ALL_LECTURES_WITH_CCODE);
>>>>>>> origin/test
		sql.append(Sql_studAssist.SEARCH_ORDER_DEPTCODE);
		sql.append(Sql_studAssist.SEARCH_OFFET_ROW);

		try {
			conn = getConnection();
			logger.debug(sql.toString());
			psmt = conn.prepareStatement(sql.toString());
<<<<<<< HEAD
			psmt.setInt(1, start);
=======
			psmt.setString(1, cCode);
			psmt.setInt(2, start);
>>>>>>> origin/test

			rs = psmt.executeQuery();

			while (rs.next()) {
				SA_regDTO dto = new SA_regDTO();
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
				dto.setTimeS(rs.getString(13));
				dto.setTimeE(rs.getString(14));
				dto.setTimeD(rs.getString(15));
				dto.setEvaWay(rs.getString(16));
				dto.setBook(rs.getString(17));
				dto.setRoom(rs.getString(18));
				dto.setMaxNum(rs.getInt(19));
				dto.setNowNum(rs.getInt(20));

				dtoList.add(dto);
				logger.debug(dto.toString());
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

	public void modify(SA_regDTO dto) {

	}

	public void delete(String deptCode) {

	}
}
