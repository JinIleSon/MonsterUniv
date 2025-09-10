package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.CAD_deptListDTO;
import util.DBHelper;
import util.Sql_CAD_deptList;

public class CAD_deptListDAO extends DBHelper{
	private static CAD_deptListDAO instance = new CAD_deptListDAO();
	public static CAD_deptListDAO getInstance (){
		return instance;
	}
	private CAD_deptListDAO () {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 전체 학과 개수 조회
	public int selectCountTotal() {
		int total = 0;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_CAD_deptList.SELECT_COUNT_TOTAL);

			if(rs.next()) {
				total = rs.getInt(1);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}

	// 검색 결과 개수 조회
	public int selectCountSearch(String searchType, String keyword) {
		int total = 0;

		StringBuilder sql = new StringBuilder(Sql_CAD_deptList.SELECT_COUNT_SEARCH);

		if(searchType.equals("deptname")) {
			sql.append(Sql_CAD_deptList.SEARCH_WHERE_DEPTNAME);
		} else if(searchType.equals("unitcol")) {
			sql.append(Sql_CAD_deptList.SEARCH_WHERE_UNITCOL);
		} else if(searchType.equals("dean")) {
			sql.append(Sql_CAD_deptList.SEARCH_WHERE_DEAN);
		}

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, "%" + keyword + "%");

			rs = psmt.executeQuery();

			if(rs.next()) {
				total = rs.getInt(1);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}

	// 전체 학과 목록 조회 (페이지네이션)
	public List<CAD_deptListDTO> selectAll(int start){
		List<CAD_deptListDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_CAD_deptList.SELECT_DEPTLIST_ALL);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();

			while(rs.next()) {
				CAD_deptListDTO dto = new CAD_deptListDTO();

				dto.setDeptnum(rs.getInt(1));
				dto.setUnitcol(rs.getString(2));
				dto.setDeptname(rs.getString(3));
				dto.setDean(rs.getString(4));
				dto.setDepttel(rs.getString(5));
				dto.setProCount(rs.getInt(6));
				dto.setStuCount(rs.getInt(7));
				dto.setLecCount(rs.getInt(8));

				dtoList.add(dto);
			}

			closeAll();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

	// 학과 검색 조회 (페이지네이션)
	public List<CAD_deptListDTO> selectSearch(int start, String searchType, String keyword){
		List<CAD_deptListDTO> dtoList = new ArrayList<>();

		StringBuilder sql = new StringBuilder(Sql_CAD_deptList.SELECT_DEPTLIST_SEARCH);

		if(searchType.equals("deptname")) {
			sql.append(Sql_CAD_deptList.SEARCH_WHERE_DEPTNAME);
		} else if(searchType.equals("unitcol")) {
			sql.append(Sql_CAD_deptList.SEARCH_WHERE_UNITCOL);
		} else if(searchType.equals("dean")) {
			sql.append(Sql_CAD_deptList.SEARCH_WHERE_DEAN);
		}

		sql.append(Sql_CAD_deptList.SEARCH_ORDER_DEPTNUM);
		sql.append(Sql_CAD_deptList.SEARCH_OFFSET_ROW);

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, "%" + keyword + "%");
			psmt.setInt(2, start);

			rs = psmt.executeQuery();

			while(rs.next()) {
				CAD_deptListDTO dto = new CAD_deptListDTO();

				dto.setDeptnum(rs.getInt(1));
				dto.setUnitcol(rs.getString(2));
				dto.setDeptname(rs.getString(3));
				dto.setDean(rs.getString(4));
				dto.setDepttel(rs.getString(5));
				dto.setProCount(rs.getInt(6));
				dto.setStuCount(rs.getInt(7));
				dto.setLecCount(rs.getInt(8));

				dtoList.add(dto);
			}

			closeAll();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	/*
	 * public List<CAD_deptListDTO> select(){ List<CAD_deptListDTO> dtoList = new
	 * ArrayList<>();
	 *
	 * try { conn = getConnection(); stmt = conn.createStatement(); rs =
	 * stmt.executeQuery(Sql_CAD_deptList.SELECT_DEPTLIST);
	 *
	 * while(rs.next()) {
	 *
	 * CAD_deptListDTO dto = new CAD_deptListDTO();
	 *
	 * dto.setDeptnum(rs.getInt(1)); dto.setUnitcol(rs.getString(2));
	 * dto.setDeptname(rs.getString(3)); dto.setDean(rs.getString(4));
	 * dto.setDepttel(rs.getString(5)); dto.setProCount(rs.getInt(6));
	 * dto.setStuCount(rs.getInt(7)); dto.setLecCount(rs.getInt(8));
	 *
	 * dtoList.add(dto); }
	 *
	 * closeAll();
	 *
	 * } catch (Exception e) { logger.error(e.getMessage()); } return dtoList; }
	 */

}
