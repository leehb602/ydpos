package com.spring_boot.ydpos.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring_boot.ydpos.model.WriteService;
import com.spring_boot.ydpos.model.writeVO;

@Controller
public class WriteController {
	
	@Autowired
	WriteService service;
	
@RequestMapping("/writepage") //주소로 입력하면 	
public String writpage() {
	return "/write/write"; // 이 페이지가 보임 	
}


@RequestMapping("/write2") // 게시글 등록
public String insertwrite(writeVO vo, @RequestParam("environment")String environment,
																@RequestParam("area")String area,
																@RequestParam("theme")String theme,
																@RequestParam("group")String group,
																@RequestParam("writeImg")MultipartFile file) throws IOException{
//																@ModelAttribute writeVO writeVO )
	
	
	vo.setUserId("sim");
	vo.setWriteCategory(environment+"/"+area+"/"+theme+"/"+group);
//	vo.getWriteImg()
	

	String uploadPath = "/Users/shimgyumin/git/gm/spring_boot_TeamProject/src/main/resources/static/files/";
	

	UUID uuid = UUID.randomUUID();
	

	String fileName = uuid.toString() + "_" + file.getOriginalFilename();

	
	File saveFile = new File(uploadPath + fileName);
	
	file.transferTo(saveFile);
	
	vo.setFilename(fileName);
	
	System.out.println("_"+vo.getWriteNo());
	
	service.insertwrite(vo);
	
	return "";
} 

//@RequestMapping("/")
//	public String ctg(@RequestParam("environment")String environment,
//								@RequestParam("area")String area,
//								@RequestParam("theme")String theme,
//										Model model) {
//	
//							model.addAttribute("environment",environment );
//							model.addAttribute("area",area);
//							model.addAttribute("theme",theme);
//							
//	System.out.println(environment+area+theme);
//	
//	return "";
//}








////파일 업로드 
//@RequestMapping("write2")
//public String fileUploda(@RequestParam("writeFile")MultipartFile file, 
//          Model model) throws IOException{
//           
//        	   //1.파일 저장 경로 설정
//        	   String upladePath = "/Users/shimgyumin/java_class/SpringWorkSpace/upload/";
//        	   
//        	   
//     	     //2. 원본 파일 이름 저장
//        	  String originalFileName = file.getOriginalFilename();
//        	   
//        	   //3. 파일 이름 중복되지 않도록 파일 이름 변경
//        	   //	서버에 저장할 파일 이름 설정 :UUID 사용
//        	   UUID uuid = UUID.randomUUID();
//        	   String savedFileName = uuid.toString() + "_" + originalFileName; 
//        	   
//
//        	   //4. 파일 객체 생성
//        	   File sendFile = new File(upladePath + savedFileName);
//        	   
//        	   // 5. 서버로 전송
//        	 file.transferTo(sendFile);
//        	  
//       	   //웹 브라우저에서 원본 파일명 출력 : Model로 지정//        	 
//        	model.addAttribute(savedFileName, sendFile);
//           
//	return "";
//
//
//}
}
