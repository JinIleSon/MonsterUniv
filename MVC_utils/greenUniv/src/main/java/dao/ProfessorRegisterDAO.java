package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.ProfessorRegisterDTO;
import util.DBHelper;
import util.Sql_professor;

public class ProfessorRegisterDAO extends DBHelper{
	private static ProfessorRegisterDAO instance = new ProfessorRegisterDAO();
	public static ProfessorRegisterDAO getInstance() {
		return instance;
	}
	private ProfessorRegisterDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//교수등록 담당학과
	public List<String> listColName(){
		List<String> listColName = new ArrayList<String>();
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_professor.SELECT_COLNAME);
			
			while(rs.next()) {
				listColName.add(rs.getString("colname"));
			}
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return listColName;
	}
	
	public List<String> listDeptName(){
		List<String> listDeptName = new ArrayList<String>();
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_professor.SELECT_DEPTNAME);
			
			while(rs.next()) {
				listDeptName.add(rs.getString("deptname"));
			}
			
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return listDeptName;
	}
	
	public void inster(ProfessorRegisterDTO dto) {
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_professor.INSERT_PROFESSOR);
			psmt.setString(1, dto.getPregno());
			psmt.setString(2, dto.getPname());
			psmt.setString(3, dto.getPengname());
			psmt.setString(4, dto.getPgender());
			psmt.setString(5, dto.getPnation());
			psmt.setString(6, dto.getPtel());
			psmt.setString(7, dto.getPemail());
			psmt.setString(8, dto.getPzip());
			psmt.setString(9, dto.getPaddr1());
			psmt.setString(10, dto.getPaddr2());
			psmt.setString(11, dto.getGradun());
			psmt.setString(12, dto.getMajor());
			psmt.setString(13, dto.getGraddate());
			psmt.setString(14, dto.getDegree());
			psmt.setString(15, dto.getTakecol());
			psmt.setString(16, dto.getTakedept());
			psmt.setString(17, dto.getAppdate());
			
			psmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
}
