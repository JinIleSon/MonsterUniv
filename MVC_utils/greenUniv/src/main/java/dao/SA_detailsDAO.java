package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_detailsDTO;
import util.DBHelper;
import util.Sql;

public class SA_detailsDAO extends DBHelper {

	private static final SA_detailsDAO INSTANCE = new SA_detailsDAO();
	public static SA_detailsDAO getInstance() {
		return INSTANCE;
	}
	private SA_detailsDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insert(SA_detailsDTO dto) {
		
	}
	
	public List<SA_detailsDTO> selectWithSnum(String snum) {
		List<SA_detailsDTO> dtoList = new ArrayList<SA_detailsDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.SELECT_REGDETAILS_WITH_SNUM);
			psmt.setString(1, snum);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				SA_detailsDTO dto = new SA_detailsDTO();
				dto.setSnum(rs.getInt(1));
				dto.setYclasS(rs.getString(2));
				dto.setSemester(rs.getString(3));
				dto.setDeptCode(rs.getString(4));
				dto.setLname(rs.getString(5));
				dto.setYear(rs.getString(6));
				dto.setProf(rs.getString(7));
				dto.setGrade(rs.getInt(8));
				dto.setCompDiv(rs.getString(9));
				dto.setTimeS(rs.getString(10));
				dto.setTimeE(rs.getString(11));
				dto.setTimeD(rs.getString(12));
				dto.setRoom(rs.getString(13));
				
				// 시간 계산
				int startTime = Integer.parseInt(dto.getTimeS().substring(11, 13));
		        int endtTime = Integer.parseInt(dto.getTimeE().substring(11, 13));
		        int timeDiff = endtTime - startTime;
		        
		        StringBuilder times = new StringBuilder();
				for (int i = 0; i < timeDiff; i++) {
					if (i < timeDiff - 1) {
						times.append(i+1+",");
					} else {
						times.append(i+1);
					}
				}
				dto.setlTimes(times.toString());
			
				dtoList.add(dto);
				logger.debug(dto.toString());
			}
			
			closeAll();
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
		return dtoList;
	}
	
	public List<SA_detailsDTO> selectAllWithKeywords(String year, String semester) {
		return null;
	}
	
	public void delete(String deptCode) {
		
	}
}
