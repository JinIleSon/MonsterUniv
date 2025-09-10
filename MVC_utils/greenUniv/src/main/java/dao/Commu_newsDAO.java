package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Commu_newsDTO;
import util.DBHelper;
import util.Sql_comm_news;

public class Commu_newsDAO extends DBHelper{

	private final static Commu_newsDAO INSTANCE = new Commu_newsDAO();
	public static Commu_newsDAO getInstance() {
		return INSTANCE;
	}
	private Commu_newsDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 검색 안 했을 때 나오는 테이블 왼쪽 인덱싱
	public int selectCountTotal() {
		int total = 0;

		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_comm_news.SELECT_COUNT_TOTAL);

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
	public List<Commu_newsDTO> selectAll(int start){
		List<Commu_newsDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_comm_news.SELECT_ARTICLE_ALL);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();

			while (rs.next()) {
				Commu_newsDTO dto = new Commu_newsDTO();
				dto.setId(rs.getInt(1));
				dto.setClassify(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setNick(rs.getString(4));
				dto.setDate(rs.getString(5));
				dto.setHits(rs.getInt(6));

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
		StringBuilder sql = new StringBuilder(Sql_comm_news.SELECT_COUNT_SEARCH);

		boolean allOrNot = false;
		if(searchType.equals("title")) {
			sql.append(Sql_comm_news.SEARCH_WHERE_TITLE);
		}else if(searchType.equals("all")) {
			sql.append(Sql_comm_news.SEARCH_WHERE_ALL);
			allOrNot = true;
		}else if(searchType.equals("nick")) {
			sql.append(Sql_comm_news.SEARCH_WHERE_NICK);
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
	public List<Commu_newsDTO> selectArticleSearch(int start, String searchType, String keyword){
		List<Commu_newsDTO> dtoList = new ArrayList<>();

		StringBuilder sql = new StringBuilder(Sql_comm_news.SELECT_ARTICLE_SEARCH);
		boolean allOrNot = false;
		if(searchType.equals("title")) {
			sql.append(Sql_comm_news.SEARCH_WHERE_TITLE);
		}else if(searchType.equals("all")) {
			sql.append(Sql_comm_news.SEARCH_WHERE_ALL);
			allOrNot = true;
		}else if(searchType.equals("nick")) {
			sql.append(Sql_comm_news.SEARCH_WHERE_NICK);
		}
		sql.append(Sql_comm_news.SEARCH_ORDER_ID);
		sql.append(Sql_comm_news.SEARCH_OFFEST_ROW);


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
				Commu_newsDTO dto = new Commu_newsDTO();
				dto.setId(rs.getInt(1));
				dto.setClassify(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setNick(rs.getString(4));
				dto.setDate(rs.getString(5));
				dto.setHits(rs.getInt(6));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	
	// 최근 n개 뉴스 가져오기
	public List<Commu_newsDTO> selectRecent(int limit) {
	    List<Commu_newsDTO> list = new ArrayList<>();
	    String sql = "SELECT id, title, `date` FROM commu_news ORDER BY id DESC LIMIT ?";

	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(sql);
	        psmt.setInt(1, limit);
	        rs = psmt.executeQuery();
	        while (rs.next()) {
	            Commu_newsDTO dto = new Commu_newsDTO();
	            dto.setId(rs.getInt("id"));
	            dto.setTitle(rs.getString("title"));
	            dto.setDate(rs.getString("date")); // DTO에 date 필드가 String이라면 그대로
	            list.add(dto);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try { closeAll(); } catch (Exception ignore) {}
	    }
	    return list;
	}
}
