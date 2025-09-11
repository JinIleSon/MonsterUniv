package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Commu_QnADTO;
import util.DBHelper;
import util.Sql_comm_QnA;

public class Commu_QnADAO extends DBHelper{

	private final static Commu_QnADAO INSTANCE = new Commu_QnADAO();
	public static Commu_QnADAO getInstance() {
		return INSTANCE;
	}
	private Commu_QnADAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 검색 안 했을 때 나오는 테이블 왼쪽 인덱싱
	public int selectCountTotal() {
		int total = 0;

		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql_comm_QnA.SELECT_COUNT_TOTAL);

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
	public List<Commu_QnADTO> selectAll(int start){
		List<Commu_QnADTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_comm_QnA.SELECT_ARTICLE_ALL);
			psmt.setInt(1, start);

			rs = psmt.executeQuery();

			while (rs.next()) {
				Commu_QnADTO dto = new Commu_QnADTO();
				dto.setId(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setNick(rs.getString(3));
				dto.setDate(rs.getString(4));
				dto.setCondition(rs.getString(5));

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
		StringBuilder sql = new StringBuilder(Sql_comm_QnA.SELECT_COUNT_SEARCH);

		boolean allOrNot = false;
		if(searchType.equals("title")) {
			sql.append(Sql_comm_QnA.SEARCH_WHERE_TITLE);
		}else if(searchType.equals("all")) {
			sql.append(Sql_comm_QnA.SEARCH_WHERE_ALL);
			allOrNot = true;
		}else if(searchType.equals("nick")) {
			sql.append(Sql_comm_QnA.SEARCH_WHERE_NICK);
		}

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());

			if (allOrNot) {
				psmt.setString(1, keyword);
				psmt.setString(2, "%" + keyword + "%");
				psmt.setString(3, "%" + keyword + "%");
				psmt.setString(4, "%" + keyword + "%");
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
	public List<Commu_QnADTO> selectArticleSearch(int start, String searchType, String keyword){
		List<Commu_QnADTO> dtoList = new ArrayList<>();

		StringBuilder sql = new StringBuilder(Sql_comm_QnA.SELECT_ARTICLE_SEARCH);
		boolean allOrNot = false;
		if(searchType.equals("title")) {
			sql.append(Sql_comm_QnA.SEARCH_WHERE_TITLE);
		}else if(searchType.equals("all")) {
			sql.append(Sql_comm_QnA.SEARCH_WHERE_ALL);
			allOrNot = true;
		}else if(searchType.equals("nick")) {
			sql.append(Sql_comm_QnA.SEARCH_WHERE_NICK);
		}
		sql.append(Sql_comm_QnA.SEARCH_ORDER_ID);
		sql.append(Sql_comm_QnA.SEARCH_OFFEST_ROW);


		try {
			conn = getConnection();
			psmt = conn.prepareStatement(sql.toString());
			if (allOrNot) {
				psmt.setString(1, keyword);
				psmt.setString(2, "%" + keyword + "%");
				psmt.setString(3, "%" + keyword + "%");
				psmt.setString(4, "%" + keyword + "%");
				psmt.setInt(5, start);
			}else {
				psmt.setString(1, "%" + keyword + "%" );
				psmt.setInt(2, start);
			}
			rs = psmt.executeQuery();

			while(rs.next()) {
				Commu_QnADTO dto = new Commu_QnADTO();
				dto.setId(rs.getInt(1));
				dto.setTitle(rs.getString(2));
				dto.setNick(rs.getString(3));
				dto.setDate(rs.getString(4));
				dto.setCondition(rs.getString(5));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

}
