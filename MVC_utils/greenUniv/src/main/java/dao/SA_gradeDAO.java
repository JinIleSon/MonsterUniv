package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_gradeDTO;
import util.DBHelper;
import util.Sql_studAssist;

public class SA_gradeDAO extends DBHelper {

	private static final SA_gradeDAO INSTANCE = new SA_gradeDAO();
	public static SA_gradeDAO getInstance() {
		return INSTANCE;
	}
	private SA_gradeDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	public void insert(SA_gradeDTO dto) {

	}

	public SA_gradeDTO select(int snum) {
		return null;
	}

	public List<SA_gradeDTO> selectAll(int snum, String year, String semester) {
		List<SA_gradeDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_GRADE_WITH_SNUM_AND_YEAR_AND_SEM);
			psmt.setInt(1, snum);
			psmt.setString(2, year);
			psmt.setString(3, semester);

			logger.debug("SA_gradeDAO - selectAll");
			logger.debug(psmt.toString().substring(psmt.toString().indexOf(":")+2));

			rs = psmt.executeQuery();
			while (rs.next()) {
				SA_gradeDTO dto = new SA_gradeDTO();
				dto.setSnum(rs.getInt("snum"));
				dto.setDeptCode(rs.getString("deptcode"));
				dto.setLname(rs.getString("lname"));
				dto.setYear(rs.getString("year"));
				dto.setProf(rs.getString("prof"));
				dto.setCompDiv(rs.getString("compdiv"));
				dto.setScore(rs.getInt("score"));
				dto.setRating(rs.getString("rating"));
				dto.setGrade(rs.getInt("grade"));

				logger.debug("dto : " + dto);
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
		return dtoList;
	}

	public int selectCount(int snum, String year, String semester) {
		int count = 0;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist.SELECT_COUNT_WITH_SNUM_AND_YEAR_AND_SEM);
			psmt.setInt(1, snum);
			psmt.setString(2, year);
			psmt.setString(3, semester);
			
			logger.debug("SA_gradeDAO - selectAll");
			logger.debug(psmt.toString().substring(psmt.toString().indexOf(":")+2));
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
				
				logger.debug("count : " + count);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return count;
	}
	
	public void modify(SA_gradeDTO dto) {

	}

	public void delete(int snum) {

	}
}
