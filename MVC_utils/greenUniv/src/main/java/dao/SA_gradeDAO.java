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

	public List<SA_gradeDTO> selectAll() {
		List<SA_gradeDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_studAssist)
		} catch (Exception e) {
			 logger.error(e.getMessage());
		}
		return null;
	}

	public void modify(SA_gradeDTO dto) {

	}

	public void delete(int snum) {

	}
}
