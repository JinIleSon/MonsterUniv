package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.CL_menuGuideDTO;
import util.DBHelper;
import util.Sql_CL_menuGuide;

public class CL_menuGuideDAO extends DBHelper{

	private final static CL_menuGuideDAO INSTANCE = new CL_menuGuideDAO();
	public static CL_menuGuideDAO getInstance() {
		return INSTANCE;
	}
	private CL_menuGuideDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());


	// 기본 리스트 뿌려주기
	public List<CL_menuGuideDTO> selectALL(){
		List<CL_menuGuideDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_CL_menuGuide.SELECT_ARTICLE_ALL);

			rs = psmt.executeQuery();

			while (rs.next()) {
				CL_menuGuideDTO dto = new CL_menuGuideDTO();
				dto.setDate(rs.getString(1));
				dto.setPrice(rs.getString(2));
				dto.setRice(rs.getString(3));
				dto.setSoup(rs.getString(4));
				dto.setSide1(rs.getString(5));
				dto.setSide2(rs.getString(6));
				dto.setSide3(rs.getString(7));
				dto.setSide4(rs.getString(8));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}



}
