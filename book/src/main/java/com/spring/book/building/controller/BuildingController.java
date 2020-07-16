package com.spring.book.building.controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.book.building.domain.Building;
import com.spring.book.building.domain.BuildingUploadFile;
import com.spring.book.building.service.IBuildingService;
import com.spring.book.commons.paging.Page;
import com.spring.book.commons.paging.PageCreator;

@RestController
public class BuildingController {
	
	@Autowired
	private IBuildingService buildingService;
	
	//글쓰기 화면 열람 요청
	@GetMapping("/building")
	public ModelAndView write() {
		return new ModelAndView("buildingboard/write");
	}
	
	//작성
	@PostMapping("/building")
		public ModelAndView BuildingInsert(Building building,RedirectAttributes ra) throws Exception {
		
		        ModelAndView mv=new ModelAndView();
				MultipartFile mfile = building.getFile();
				
				if(mfile != null && !mfile.isEmpty()) {
					BuildingUploadFile file = new BuildingUploadFile();
					
					file.setFileName(mfile.getOriginalFilename());
					file.setFileSize(mfile.getSize());
					file.setFileContentType(mfile.getContentType());
					file.setFileData(mfile.getBytes());
					
					buildingService.register(building, file);
					ra.addFlashAttribute("message", "insertSuccess");
				} else {
					buildingService.register(building);
					ra.addFlashAttribute("message", "insertSuccess");
				}
				mv.setViewName("redirect:/building/all/1");
				return mv;
		}
	
	//게시글 목록 요청에 대한 처리
	@GetMapping("/building/all/{page}")
	public ModelAndView list(@PathVariable Integer page, Page paging) {
		
		ModelAndView mv=new ModelAndView();
		
		paging.setPage(page);
		List<Building> articles=buildingService.selectAll(paging);
		
		//페이지 계산을 위한 객체 생성
		PageCreator pc=new PageCreator(paging,buildingService.countArticles(paging));
		
		//DB에서 가져온 데이터 화면으로 전송
		mv.addObject("articles",articles);
		
		mv.addObject("pc",pc);
		
		mv.setViewName("buildingboard/list");
		
		return mv;
	}

	//게시글 상세조회에 대한 요청 처리
	@GetMapping("/building/{buildingId}")
	public ModelAndView content(@PathVariable Integer buildingId,Model model,Page paging) throws Exception {
		
		ModelAndView mv=new ModelAndView();
		
		paging.setCountPerPage(3);
		
		Map<String, Object> datas=buildingService.selectOne(buildingId,paging);
		BuildingUploadFile file=buildingService.getFileByBuildingId(buildingId);
		//Map<String, Object> file=buildingService.getFileByBuildingId(buildingId);
		
		mv.addObject("article", datas.get("article"));
		mv.addObject("replies", datas.get("replies"));
		
		model.addAttribute("image",file);
		mv.setViewName("buildingboard/content");
		
		return mv;
	}
	
	@GetMapping("/update/{buildingId}")
	public ModelAndView updateform(@PathVariable Integer buildingId, Model model,Page paging) {
		
		ModelAndView mv=new ModelAndView();
		
		Map<String, Object> datas=buildingService.selectOne(buildingId,paging);
		
		mv.addObject("article", datas.get("article"));
		
		mv.setViewName("buildingboard/update");
		
		return mv;
	}
	
	@PostMapping("/update/{buildingId}")
	public ModelAndView update(@PathVariable Integer buildingId,Building building,RedirectAttributes ra) {
		
		ModelAndView mv=new ModelAndView();
		buildingService.update(building);
		ra.addFlashAttribute("message", "modSuccess");
		
		mv.setViewName("redirect:/building/"+buildingId);
		return mv;
	}
	
	@DeleteMapping("/building/{buildingId}")
	public String deleteArticle(@PathVariable Integer buildingId) {
		
		buildingService.delete(buildingId);
		return "delSuccess";
	}
	

	   //업로드 사진 파일 불러오기 요청
		@RequestMapping("/building/file/{fileId}")
		public ResponseEntity<byte[]> getFile(@PathVariable int fileId) throws Exception{
			
				BuildingUploadFile file = buildingService.getFile(fileId);
			
				//System.out.println("file정보: " + file);
				
				//파일을 클라이언트로 전송하기 위해 전송정보를 담을 헤더를 설정한다.
				HttpHeaders headers = new HttpHeaders();
				String[] ftypes = file.getFileContentType().split("/");
				
				//전송헤더에 파일 정보와 확장자를 셋팅한다.
				headers.setContentType(new MediaType(ftypes[0], ftypes[1]));
				
				//전송헤더에 파일 용량을 셋팅한다.
				headers.setContentLength(file.getFileSize());
				
				//전송헤더에 파일명을 셋팅한다.
				headers.setContentDispositionFormData("attachment", file.getFileName());
				
				return new ResponseEntity<byte[]>(file.getFileData(), headers, HttpStatus.OK);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}
