package dao.AMS;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS.LectureDTO;
import util.DBHelper;
import util.Sql;

public class LectureDAO extends DBHelper {

	private static final LectureDAO INSTANCE = new LectureDAO();

	public static LectureDAO getInstance() {
		return INSTANCE;
	}

	private LectureDAO() {
	}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	public void insert(LectureDTO dto) {

	}

	public LectureDTO select(String deptCode) {
		return null;
	}

	public int selectCountTotal() {
		int count = 0;

		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql.SELECT_COUNT);
			if (rs.next()) {
				count = rs.getInt(1);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		logger.debug("count : "+count);
		return count;
	}

	public int selectCountSearch(String searchType, String keyword) {
		int count = 0;

		StringBuilder sql = new StringBuilder(Sql.SELECT_COUNT);
		switch (searchType) {
		case "openMaj":
			sql.append(Sql.WITH_OPENMAJ);
			break;

		case "deptCode":
			sql.append(Sql.WITH_DEPTCODE);
			break;
			
		case "lname":
			sql.append(Sql.WITH_LNAME);
			break;

		case "year":
			sql.append(Sql.WITH_YEAR);
			break;

		case "prof":
			sql.append(Sql.WITH_PROF);
			break;

		case "compDiv":
			sql.append(Sql.WITH_COMPDIV);
			break;

		case "grade":
			sql.append(Sql.WITH_GRADE);
			break;

		case "room":
			sql.append(Sql.WITH_ROOM);
			break;

		default:
			break;
		}

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, "%"+keyword+"%");
			rs = psmt.executeQuery();
			count = rs.getInt(1);
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return count;
	}

	public List<LectureDTO> selectWithSearch(int start, String searchType, String keyword) {
		List<LectureDTO> dtoList = new ArrayList<LectureDTO>();

		StringBuilder sql = new StringBuilder(Sql.SELECT_ALL_LECTURES);
		switch (searchType) {
		case "openMaj":
			sql.append(Sql.WITH_OPENMAJ);
			break;

		case "deptCode":
			sql.append(Sql.WITH_DEPTCODE);
			break;
			
		case "lname":
			sql.append(Sql.WITH_LNAME);
			break;

		case "year":
			sql.append(Sql.WITH_YEAR);
			break;

		case "prof":
			sql.append(Sql.WITH_PROF);
			break;

		case "compDiv":
			sql.append(Sql.WITH_COMPDIV);
			break;

		case "grade":
			sql.append(Sql.WITH_GRADE);
			break;

		case "room":
			sql.append(Sql.WITH_ROOM);
			break;

		default:
			break;
		}
		sql.append(Sql.SEARCH_ORDER_DEPTCODE);
		sql.append(Sql.SEARCH_OFFET_ROW);

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, "%"+keyword+"%");
			psmt.setInt(2, start);
			rs = psmt.executeQuery();

			while (rs.next()) {
				LectureDTO dto = new LectureDTO();
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

	public List<LectureDTO> selectAll(int start) {
		List<LectureDTO> dtoList = new ArrayList<LectureDTO>();
		
		StringBuilder sql = new StringBuilder(Sql.SELECT_ALL_LECTURES);

		try {
			conn = getConnection();
			logger.debug(sql.toString());
			psmt = conn.prepareStatement(sql.toString());
			psmt.setInt(1, start);
			
			rs = psmt.executeQuery();

			while (rs.next()) {
				LectureDTO dto = new LectureDTO();
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

	public void modify(LectureDTO dto) {

	}

	public void delete(String deptCode) {

	}
}
