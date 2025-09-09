package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Adm_counselDTO;
import util.DBHelper;
import util.Sql_Adm_counsel;

public class Adm_counselDAO extends DBHelper{

	private final static Adm_counselDAO INSTANCE = new Adm_counselDAO();
	public static Adm_counselDAO getInstance() {
		return INSTANCE;
	}
	private Adm_counselDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// 기본 리스트 뿌려주기
	public List<Adm_counselDTO> selectAllThree(){
		List<Adm_counselDTO> dtoList = new ArrayList<Adm_counselDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_Adm_counsel.SELECT_ARTICLE_THREE);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				Adm_counselDTO dto = new Adm_counselDTO();
				dto.setId(rs.getInt("id"));
				dto.setTitle(rs.getString("title"));
				
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 검색 안 했을 때 나오는 테이블 왼쪽 인덱싱
	public int selectCountTotal() {
		int total = 0;

		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_Adm_counsel.SELECT_COUNT_TOTAL);

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
	public List<Adm_counselDTO> selectAll(int start){
		List<Adm_counselDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_Adm_counsel.SELECT_ARTICLE_ALL);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();

			while (rs.next()) {
				Adm_counselDTO dto = new Adm_counselDTO();
				dto.setId(rs.getInt("id"));
				dto.setClassify(rs.getString("classify"));
				dto.setTitle(rs.getString("title"));
				dto.setNick(rs.getString("nick"));
				dto.setDate(rs.getString("date"));
				dto.setCondition(rs.getString("condition"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 검색하면 나오는 테이블 왼쪽 인덱싱
	public int selectCountSearch(String searchType, String keyword) {

		int total = 0;
		StringBuilder sql = new StringBuilder(Sql_Adm_counsel.SELECT_COUNT_SEARCH);

		boolean allOrNot = false;
		if(searchType.equals("title")) {
			sql.append(Sql_Adm_counsel.SEARCH_WHERE_TITLE);
		}else if(searchType.equals("all")) {
			sql.append(Sql_Adm_counsel.SEARCH_WHERE_ALL);
			allOrNot = true;
		}else if(searchType.equals("nick")) {
			sql.append(Sql_Adm_counsel.SEARCH_WHERE_NICK);
		}

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());

			if (allOrNot) {
				psmt.setString(1, keyword);
				psmt.setString(2, "%" + keyword + "%");
				psmt.setString(3, "%" + keyword + "%");
				psmt.setString(4, "%" + keyword + "%");
				psmt.setString(5, "%" + keyword + "%");
			}else {
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
	// 검색한 결과
	public List<Adm_counselDTO> selectArticleSearch(int start, String searchType, String keyword){
		List<Adm_counselDTO> dtoList = new ArrayList<>();

		StringBuilder sql = new StringBuilder(Sql_Adm_counsel.SELECT_ARTICLE_SEARCH);
		boolean allOrNot = false;
		if(searchType.equals("title")) {
			sql.append(Sql_Adm_counsel.SEARCH_WHERE_TITLE);
		}else if(searchType.equals("all")) {
			sql.append(Sql_Adm_counsel.SEARCH_WHERE_ALL);
			allOrNot = true;
		}else if(searchType.equals("nick")) {
			sql.append(Sql_Adm_counsel.SEARCH_WHERE_NICK);
		}
		sql.append(Sql_Adm_counsel.SEARCH_ORDER_ID);
		sql.append(Sql_Adm_counsel.SEARCH_OFFEST_ROW);


		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			if (allOrNot) {
				psmt.setString(1, keyword);
				psmt.setString(2, "%" + keyword + "%");
				psmt.setString(3, "%" + keyword + "%");
				psmt.setString(4, "%" + keyword + "%");
				psmt.setString(5, "%" + keyword + "%");
				psmt.setInt(6, start);
			}else {
				psmt.setString(1, "%" + keyword + "%" );
				psmt.setInt(2, start);
			}
			rs = psmt.executeQuery();

			while(rs.next()) {
				Adm_counselDTO dto = new Adm_counselDTO();
				dto.setId(rs.getInt("id"));
				dto.setClassify(rs.getString("classify"));
				dto.setTitle(rs.getString("title"));
				dto.setNick(rs.getString("nick"));
				dto.setDate(rs.getString("date"));
				dto.setCondition(rs.getString("condition"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

}
