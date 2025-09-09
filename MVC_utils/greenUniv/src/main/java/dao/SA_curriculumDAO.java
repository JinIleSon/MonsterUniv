package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_curriculumDTO;
import util.DBHelper;
import util.Sql_studAssist;

public class SA_curriculumDAO extends DBHelper{

	private final static SA_curriculumDAO INSTANCE = new SA_curriculumDAO();
	public static SA_curriculumDAO getInstance() {
		return INSTANCE;
	}
	private SA_curriculumDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());


	// 기본 리스트 뿌려주기
	public List<SA_curriculumDTO> selectAll1(String cCode){
		List<SA_curriculumDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_ARTICLE_curricAll1);
			psmt.setString(1, cCode);

			rs = psmt.executeQuery();

			while (rs.next()) {
				SA_curriculumDTO dto = new SA_curriculumDTO();
				dto.setYear(rs.getString("year"));
				dto.setcCode(rs.getString("ccode"));
				dto.setCompDiv(rs.getString("compdiv"));
				dto.setLname(rs.getString("lname"));
				dto.setGrade(rs.getInt("grade"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	public List<SA_curriculumDTO> selectAll2(String cCode){
		List<SA_curriculumDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_ARTICLE_curricAll2);
			psmt.setString(1, cCode);

			rs = psmt.executeQuery();

			while (rs.next()) {
				SA_curriculumDTO dto = new SA_curriculumDTO();
				dto.setYear(rs.getString("year"));
				dto.setcCode(rs.getString("ccode"));
				dto.setCompDiv(rs.getString("compdiv"));
				dto.setLname(rs.getString("lname"));
				dto.setGrade(rs.getInt("grade"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	public List<SA_curriculumDTO> selectAll3(String cCode){
		List<SA_curriculumDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_ARTICLE_curricAll3);
			psmt.setString(1, cCode);

			rs = psmt.executeQuery();

			while (rs.next()) {
				SA_curriculumDTO dto = new SA_curriculumDTO();
				dto.setYear(rs.getString("year"));
				dto.setcCode(rs.getString("ccode"));
				dto.setCompDiv(rs.getString("compdiv"));
				dto.setLname(rs.getString("lname"));
				dto.setGrade(rs.getInt("grade"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	public List<SA_curriculumDTO> selectAll4(String cCode){
		List<SA_curriculumDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_ARTICLE_curricAll4);
			psmt.setString(1, cCode);

			rs = psmt.executeQuery();

			while (rs.next()) {
				SA_curriculumDTO dto = new SA_curriculumDTO();
				dto.setYear(rs.getString("year"));
				dto.setcCode(rs.getString("ccode"));
				dto.setCompDiv(rs.getString("compdiv"));
				dto.setLname(rs.getString("lname"));
				dto.setGrade(rs.getInt("grade"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	public List<SA_curriculumDTO> selectAllCommon(String cCode){
		List<SA_curriculumDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_ARTICLE_curricAllCommon);
			psmt.setString(1, cCode);

			rs = psmt.executeQuery();

			while (rs.next()) {
				SA_curriculumDTO dto = new SA_curriculumDTO();
				dto.setYear(rs.getString("year"));
				dto.setcCode(rs.getString("ccode"));
				dto.setCompDiv(rs.getString("compdiv"));
				dto.setLname(rs.getString("lname"));
				dto.setGrade(rs.getInt("grade"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
}
