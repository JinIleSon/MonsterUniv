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
	private LectureDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insert(LectureDTO dto) {
		
	}
	
	public LectureDTO select(String deptCode) {
		return null;
	}
	
	public List<LectureDTO> selectAll(){
		List<LectureDTO> dtoList = new ArrayList<LectureDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.SELECT_ALL_LECTURES);
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
	
	public void modify(LectureDTO dto) {
		
	}
	
	public void delete(String deptCode) {
		
	}
}
