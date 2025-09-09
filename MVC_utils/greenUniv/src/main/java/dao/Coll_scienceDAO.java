package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Coll_scienceDTO;
import util.DBHelper;
import util.Sql_coll_science;

public class Coll_scienceDAO extends DBHelper{

	private final static Coll_scienceDAO INSTANCE = new Coll_scienceDAO();
	public static Coll_scienceDAO getInstance() {
		return INSTANCE;
	}
	private Coll_scienceDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 기본 리스트 뿌려주기
	public List<Coll_scienceDTO> selectAll(){
		List<Coll_scienceDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_coll_science.SELECT_ARTICLE_ALL);

			rs = psmt.executeQuery();

			while (rs.next()) {
				Coll_scienceDTO dto = new Coll_scienceDTO();
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
