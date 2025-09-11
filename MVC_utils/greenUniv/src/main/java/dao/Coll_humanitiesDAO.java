package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Coll_humanitiesDTO;
import util.DBHelper;
import util.Sql_coll_humanities;

public class Coll_humanitiesDAO extends DBHelper{

	private final static Coll_humanitiesDAO INSTANCE = new Coll_humanitiesDAO();
	public static Coll_humanitiesDAO getInstance() {
		return INSTANCE;
	}
	private Coll_humanitiesDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 기본 리스트 뿌려주기
	public List<Coll_humanitiesDTO> selectAll(){
		List<Coll_humanitiesDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_coll_humanities.SELECT_ARTICLE_ALL);

			rs = psmt.executeQuery();

			while (rs.next()) {
				Coll_humanitiesDTO dto = new Coll_humanitiesDTO();
				dto.setUnitCol(rs.getString("unitcol"));
				dto.setDeptName(rs.getString("deptname"));
				dto.setDean(rs.getString("dean"));
				dto.setDeptTel(rs.getString("depttel"));
				dto.setColcont(rs.getString("colcont"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

}
