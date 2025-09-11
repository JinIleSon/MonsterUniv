package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.CL_galleryDTO;
import util.DBHelper;
import util.Sql_CL_gallery;

public class CL_galleryDAO extends DBHelper{

	private final static CL_galleryDAO INSTANCE = new CL_galleryDAO();
	public static CL_galleryDAO getInstance() {
		return INSTANCE;
	}
	private CL_galleryDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 검색 안 했을 때 나오는 테이블 왼쪽 인덱싱
	public int selectCountTotal() {
		int total = 0;

		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_CL_gallery.SELECT_COUNT_TOTAL);

			if(rs.next()) {
				total = rs.getInt(1);
			}
			closeAll();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	// 기본 리스트 뿌려주기
	public List<CL_galleryDTO> selectAll(int start){
		List<CL_galleryDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_CL_gallery.SELECT_ARTICLE_ALL);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();

			while (rs.next()) {
				CL_galleryDTO dto = new CL_galleryDTO();
				dto.setId(rs.getInt(1));
				dto.setImageroute(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setHits(rs.getInt(4));
				dto.setWhere(rs.getString(5));
				dto.setRegdate(rs.getString(6));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}


}
