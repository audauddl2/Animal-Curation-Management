package com.owth.common;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.owth.vo.Bbsmgt.BbsVO;

@Component("fileUtils")
public class FileUtils {
	//경로 수정 필요
	String path = "D:\\Project\\source\\CompanionAnimal\\upload\\";
	
	public List<Map<String, Object>> parseInsertFileInfo(BbsVO bbsVO, HttpServletRequest request) throws Exception{
		
			//MultiparthttpServletRequest 생성
			MultipartHttpServletRequest multi = (MultipartHttpServletRequest)request;
			Iterator<String> iter = multi.getFileNames();
			
			MultipartFile multipartFile = null;
			String originalFileName = "";
			String orginalFileExtension = "";
			String storedFileName = "";
			
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			Map<String, Object> listMap = null;
			int bbsIdx = bbsVO.getBbsIdx();
			String flag = bbsVO.getFlag();
			
			File file = new File(path);
			if(file.exists() == false) {
				file.mkdirs();
			}
			
			while (iter.hasNext()) {
				multipartFile = multi.getFile(iter.next());
				if(multipartFile.isEmpty() == false) {
					originalFileName = multipartFile.getOriginalFilename();
					orginalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
					storedFileName = getUuid() + orginalFileExtension;
				}
				file = new File(path + storedFileName);
				multipartFile.transferTo(file);
				
				listMap = new HashMap<String, Object>();
				listMap.put("bbsIdx", bbsIdx);
				listMap.put("FileName", originalFileName);
				listMap.put("FileRealName", storedFileName);
				listMap.put("FileSize", multipartFile.getSize());
				listMap.put("flag", flag);
				list.add(listMap);
			}
			
			return list;
			
	}
	
	//중복 파일 제거
	public static String getUuid() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
}
