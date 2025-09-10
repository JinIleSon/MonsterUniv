package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.ProfessorListDTO;
import util.DBHelper;
import util.Sql_professor;

public class ProfessorListDAO extends DBHelper{
	private static ProfessorListDAO instance = new ProfessorListDAO();
	public static ProfessorListDAO getInstance() {
		return instance;
	}
	private ProfessorListDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// 전체 교수 개수 조회
	public int selectCountTotal() {
		int total = 0;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_professor.SELECT_COUNT_TOTAL);
			
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
		
		StringBuilder sql = new StringBuilder(Sql_professor.SELECT_COUNT_SEARCH);
		
		if(searchType.equals("pnum")) {
			sql.append(Sql_professor.SEARCH_WHERE_PNUM);
		} else if(searchType.equals("pname")) {
			sql.append(Sql_professor.SEARCH_WHERE_PNAME);
		} else if(searchType.equals("department")) {
			sql.append(Sql_professor.SEARCH_WHERE_DEPARTMENT);
		} else if(searchType.equals("status")) {
			sql.append(Sql_professor.SEARCH_WHERE_STATUS);
		}
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			
			if(searchType.equals("status")) {
				psmt.setString(1, keyword); // 재직중, 휴직, 퇴직 등 정확한 매칭
			} else {
				psmt.setString(1, "%" + keyword + "%");
			}
			
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
	
	// 전체 교수 목록 조회 (페이지네이션)
	public List<ProfessorListDTO> selectAll(int start) {
		List<ProfessorListDTO> dtoList = new ArrayList<>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_professor.SELECT_PROFESSOR_ALL);
			psmt.setInt(1, start);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ProfessorListDTO dto = new ProfessorListDTO();
				dto.setPnum(rs.getString(1));
				dto.setPname(rs.getString(2));
				dto.setPid(rs.getString(3));
				dto.setPtel(rs.getString(4));
				dto.setPemail(rs.getString(5));
				dto.setDepartment(rs.getString(6));
				dto.setPrank(rs.getString(7));
				dto.setPstatus(rs.getString(8));
				dto.setPdate(rs.getString(9));
				
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	
	// 교수 검색 조회 (페이지네이션)
	public List<ProfessorListDTO> selectSearch(int start, String searchType, String keyword) {
		List<ProfessorListDTO> dtoList = new ArrayList<>();
		
		StringBuilder sql = new StringBuilder(Sql_professor.SELECT_PROFESSOR_SEARCH);
		
		if(searchType.equals("pnum")) {
			sql.append(Sql_professor.SEARCH_WHERE_PNUM);
		} else if(searchType.equals("pname")) {
			sql.append(Sql_professor.SEARCH_WHERE_PNAME);
		} else if(searchType.equals("department")) {
			sql.append(Sql_professor.SEARCH_WHERE_DEPARTMENT);
		} else if(searchType.equals("status")) {
			sql.append(Sql_professor.SEARCH_WHERE_STATUS);
		}
		
		sql.append(Sql_professor.SEARCH_ORDER_PNUM);
		sql.append(Sql_professor.SEARCH_OFFSET_ROW);
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			
			if(searchType.equals("status")) {
				psmt.setString(1, keyword); // 재직중, 휴직, 퇴직 등 정확한 매칭
			} else {
				psmt.setString(1, "%" + keyword + "%");
			}
			psmt.setInt(2, start);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ProfessorListDTO dto = new ProfessorListDTO();
				dto.setPnum(rs.getString(1));
				dto.setPname(rs.getString(2));
				dto.setPid(rs.getString(3));
				dto.setPtel(rs.getString(4));
				dto.setPemail(rs.getString(5));
				dto.setDepartment(rs.getString(6));
				dto.setPrank(rs.getString(7));
				dto.setPstatus(rs.getString(8));
				dto.setPdate(rs.getString(9));
				
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}		
}
