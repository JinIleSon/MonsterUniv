package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS_mainDTO;
import util.DBHelper;
import util.Sql_AMS_main;

public class AMS_mainDAO extends DBHelper{

	private final static AMS_mainDAO INSTANCE = new AMS_mainDAO();
	public static AMS_mainDAO getInstance() {
		return INSTANCE;
	}
	private AMS_mainDAO() {}

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 학사안내_공지사항(AA_notice)
	public List<AMS_mainDTO> selectAllAA(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_ARTICLE_ALL_AA);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setId(rs.getInt("id"));
				dto.setTitle(rs.getString("title"));
				dto.setNick(rs.getString("nick"));
				dto.setDate(rs.getString("date"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

	// 입학안내_입학상담(Adm_counsel)
	public List<AMS_mainDTO> selectAllAdm(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_ARTICLE_ALL_ADM);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setAdm_id(rs.getInt("id"));
				dto.setAdm_title(rs.getString("title"));
				dto.setAdm_date(rs.getString("date"));
				dto.setAdm_condition(rs.getString("condition"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

	// 학과별 학생 현황 - 학생(student) - 전체
	public List<AMS_mainDTO> selectAllStuEdept(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_COUNT_STUDENT_ALL_EDEPT);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setEdept(rs.getString("edept"));
				dto.setEdeptCount(rs.getInt("edeptcount"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 학과별 학생 현황 - 학생(student) - 재학중
	public List<AMS_mainDTO> selectAllStuIn(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_COUNT_STUDENT_IN_EDEPT);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setEdept(rs.getString("edept"));
				dto.setEdeptCount(rs.getInt("edeptcount"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 학과별 학생 현황 - 학생(student) - 휴학중
	public List<AMS_mainDTO> selectAllStuLeave(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_COUNT_STUDENT_LEAVE_EDEPT);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setEdept(rs.getString("edept"));
				dto.setEdeptCount(rs.getInt("edeptcount"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 학년별 학생 현황 - 학생(student) - 전체
	public List<AMS_mainDTO> selectAllStuEgrade(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_COUNT_STUDENT_ALL_EGRADE);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setEgrade(rs.getString("egrade"));
				dto.setEgradeCount(rs.getInt("egradecount"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 학년별 학생 현황 - 학생(student) - 재학중
	public List<AMS_mainDTO> selectAllStuInEgrade(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_COUNT_STUDENT_IN_EGRADE);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setEgrade(rs.getString("egrade"));
				dto.setEgradeCount(rs.getInt("egradecount"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 학년별 학생 현황 - 학생(student) - 휴학중
	public List<AMS_mainDTO> selectAllStuLeaveEgrade(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_COUNT_STUDENT_LEAVE_EGRADE);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setEgrade(rs.getString("egrade"));
				dto.setEgradeCount(rs.getInt("egradecount"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 교육 운영 현황
	public List<AMS_mainDTO> selectAllRun(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.SELECT_LECTURE_RUN);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setOpenMaj(rs.getString("openmaj"));
				dto.setDeptCode(rs.getString("deptcode"));
				dto.setLname(rs.getString("lname"));
				dto.setYear(rs.getString("year"));
				dto.setProf(rs.getString("prof"));
				dto.setCompDiv(rs.getString("compdiv"));
				dto.setGrade(rs.getInt("grade"));
				dto.setRoom(rs.getString("room"));
				dto.setNowNum(rs.getInt("nowNum"));
				dto.setMaxNum(rs.getInt("maxNum"));
				dto.setPercent(rs.getInt("percent"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 대학 운영 현황 - 개설학과 개수
	public List<AMS_mainDTO> selectAllMajor(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.COUNT_COLLEGE_RUN_MAJOR);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setCountDept(rs.getInt("countdept"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 대학 운영 현황 - 개설강좌 개수
	public List<AMS_mainDTO> selectAllLecture(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.COUNT_COLLEGE_RUN_LECTURE);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setCountLname(rs.getInt("countlname"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 대학 운영 현황 - 전체교수 인원
	public List<AMS_mainDTO> selectAllProf(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.COUNT_COLLEGE_RUN_PROFESSOR);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setCountPnum(rs.getInt("countpnum"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 대학 운영 현황 - 임직원 인원
	public List<AMS_mainDTO> selectAllAdmin(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.COUNT_COLLEGE_RUN_STAFF);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setCountUser(rs.getInt("countuser"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 대학 운영 현황 - 학생 인원
	public List<AMS_mainDTO> selectAllStu(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.COUNT_COLLEGE_RUN_STUDENT_ALL);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setCountStuAll(rs.getInt("countstuall"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 대학 운영 현황 - 휴학생 인원
	public List<AMS_mainDTO> selectAllStudentLeave(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.COUNT_COLLEGE_RUN_STUDENT_LEAVE);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setCountStuLeave(rs.getInt("countstuleave"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 대학 운영 현황 - 대학원생 인원
	public List<AMS_mainDTO> selectAllGradSchool(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.COUNT_COLLEGE_RUN_STUDENT_GRADSCHOOL);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setCountStuGradSchool(rs.getInt("countstugradschool"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	// 대학 운영 현황 - 졸업생 인원
	public List<AMS_mainDTO> selectAllGraduation(){
		List<AMS_mainDTO> dtoList = new ArrayList<>();

		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql_AMS_main.COUNT_COLLEGE_RUN_STUDENT_GRADUATION);

			rs = psmt.executeQuery();

			while (rs.next()) {
				AMS_mainDTO dto = new AMS_mainDTO();
				dto.setCountStuGraduation(rs.getInt("countstugraduation"));

				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}

}
