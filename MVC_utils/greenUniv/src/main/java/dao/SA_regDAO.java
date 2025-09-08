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

	public void insert(SA_regDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.)
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
	}

	public SA_regDTO select(String deptCode) {
		SA_regDTO dto = null;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_ALL_LECTURES + Sql_studAssist.WITH_DEPTCODE);
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
				dto.setNowNum(rs.getInt(19));
				dto.setLecture_hash(rs.getString(20));
			}
			logger.debug("SA_regDAO - select\n"+dto.toString());
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
		return null;
	}

	public int selectCountTotal(String cCode) {
		int count = 0;

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_COUNT_WITH_CCODE);
			psmt.setString(1, cCode);
			rs = psmt.executeQuery();
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
			break;

		default:
			break;
		}

		logger.debug(sql.toString());
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, cCode);
			psmt.setString(2, "%" + keyword + "%");
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
			psmt.setString(1, cCode);
			psmt.setString(2, "%" + keyword + "%");
			psmt.setInt(3, start);
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

	public List<SA_regDTO> selectAll(int start, String cCode) {
		List<SA_regDTO> dtoList = new ArrayList<SA_regDTO>();

		StringBuilder sql = new StringBuilder(Sql_studAssist.SELECT_ALL_LECTURES_WITH_CCODE);
		sql.append(Sql_studAssist.SEARCH_ORDER_DEPTCODE);
		sql.append(Sql_studAssist.SEARCH_OFFET_ROW);

		try {
			conn = getConnection();
			logger.debug(sql.toString());
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, cCode);
			psmt.setInt(2, start);

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
