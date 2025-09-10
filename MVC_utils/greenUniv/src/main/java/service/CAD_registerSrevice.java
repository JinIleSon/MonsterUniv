package service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.CAD_registerDAO;
import dto.CAD_collegeDTO;
import dto.CAD_deptDTO;
import dto.FileDTO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

public enum CAD_registerSrevice {

	INSTANCE;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private CAD_registerDAO dao = CAD_registerDAO.getInstance();

	public List<String> getDeptName(){
		return dao.selectDeptName();
	}

	public void collRegister(CAD_collegeDTO dto) {
		dao.collInsert(dto);
	}

	public void deptRegister(CAD_deptDTO dto) {
		dao.deptInsert(dto);
	}
	
	public FileDTO fileUpload(HttpServletRequest req) {
			
		FileDTO fileDTO = new FileDTO(); 
		
		// 파일업로드 디렉터리 경로 생성
		ServletContext ctx = req.getServletContext();
		String path = ctx.getRealPath("/files");
		
		File uploadPath = new File(path);		
		if(!uploadPath.exists()) {
			uploadPath.mkdir();
		}
				
		try {
			// 업로드 파일 Part(업로드된 파일) 첨부 파일에서 가져오기
			Part part = req.getPart("uniFile");
			
			String partName = part.getName();
			logger.debug("partName : " + partName);
			
			if(partName.equals("uniFile")) {				
				// 파일명 추출
				String oriName = part.getSubmittedFileName();
				logger.debug("oriName : " + oriName);
				
				// 중복되지 않는 파일명 생성
				String ext = oriName.substring(oriName.lastIndexOf("."));
				String savedName = UUID.randomUUID().toString() + ext;
				
				// 파일 저장(경로 + 구분자 + 중복되지 않는 파일명)
				part.write(path + File.separator + savedName);
				
				// 반환 DTO 저장
				fileDTO.setColimgo(oriName);
				fileDTO.setColimgs(savedName);					
			}
			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return fileDTO;
	}
}
