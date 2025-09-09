package service;

import java.util.ArrayList;
import java.util.List;

import dao.AMS_mainDAO;
import dto.AMS_mainDTO;
import util.Sql_AMS_main;

public enum AMS_mainService {
	
	INSTANCE;
	
	private AMS_mainDAO dao = AMS_mainDAO.getInstance();
	
	/////////////////////////////////////////////
	// 학사안내_공지사항(AA_notice)
	public List<AMS_mainDTO> findAllAA( ){
		return dao.selectAllAA();
	}
	/////////////////////////////////////////////
	// 입학안내_입학상담(Adm_counsel)
	public List<AMS_mainDTO> findAllAdm( ){
		return dao.selectAllAdm();
	}
	/////////////////////////////////////////////
	// 학과별 학생 현황 - 학생(student) - 전체
	public List<AMS_mainDTO> findAllStuEdept(){
		return dao.selectAllStuEdept();
	}
	// 학과별 학생 현황 - 학생(student) - 재학중
	public List<AMS_mainDTO> findAllStuIn(){
		return dao.selectAllStuIn();
	}
	// 학과별 학생 현황 - 학생(student) - 휴학중
	public List<AMS_mainDTO> findAllStuLeave(){
		return dao.selectAllStuLeave();
	}
	/////////////////////////////////////////////
	// 학년별 학생 현황 - 학생(student) - 전체
	public List<AMS_mainDTO> findAllStuEgrade(){
		return dao.selectAllStuEgrade();
	}
	// 학년별 학생 현황 - 학생(student) - 재학중
	public List<AMS_mainDTO> findAllStuInEgrade(){
		return dao.selectAllStuInEgrade();
	}
	// 학년별 학생 현황 - 학생(student) - 휴학중
	public List<AMS_mainDTO> findAllStuLeaveEgrade(){
		return dao.selectAllStuLeaveEgrade();
	}
	/////////////////////////////////////////////
	// 대학 운영 현황 - 강의(lecture)
	public List<AMS_mainDTO> findAllRun(){
		return dao.selectAllRun();
	}
	////////////////////////////////////////////
	// 대학 운영 현황 - 개설학과 개수
	public List<AMS_mainDTO> findAllMajor(){
		return dao.selectAllMajor();
	}
	// 대학 운영 현황 - 개설강좌 개수
	public List<AMS_mainDTO> findAllLecture(){
		return dao.selectAllLecture();
	}
	// 대학 운영 현황 - 전체교수 인원
	public List<AMS_mainDTO> findAllProf(){
		return dao.selectAllProf();
	}
	// 대학 운영 현황 - 임직원 인원
	public List<AMS_mainDTO> findAllAdmin(){
		return dao.selectAllAdmin();
	}
	// 대학 운영 현황 - 학생 인원
	public List<AMS_mainDTO> findAllStu(){
		return dao.selectAllStu();
	}
	// 대학 운영 현황 - 휴학생 인원
	public List<AMS_mainDTO> selectAllStudentLeave(){
		return dao.selectAllStudentLeave();
	}
	// 대학 운영 현황 - 대학원생 인원
	public List<AMS_mainDTO> findAllGradSchool(){
		return dao.selectAllGradSchool();
	}
	// 대학 운영 현황 - 졸업생 인원
	public List<AMS_mainDTO> selectAllGraduation(){
		return dao.selectAllGraduation();
	}
}
