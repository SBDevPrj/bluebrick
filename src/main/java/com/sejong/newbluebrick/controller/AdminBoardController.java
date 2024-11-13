package com.sejong.newbluebrick.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sejong.newbluebrick.config.FileUploadPathProperty;
import com.sejong.newbluebrick.form.NewsWriteFormModel;
import com.sejong.newbluebrick.model.Board;
import com.sejong.newbluebrick.model.BoardContent;
import com.sejong.newbluebrick.repository.BoardContentRepository;
import com.sejong.newbluebrick.repository.BoardRepository;
import com.sejong.newbluebrick.response.CommonAjaxResponse;
import com.sejong.newbluebrick.utils.PaginationUtil;


@Controller
@RequestMapping(value="/admin")
public class AdminBoardController {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	BoardContentRepository boardContentRepository;

	@Autowired
	private FileUploadPathProperty fileUploadPathProperty;
	private String TMP_FILE_UPLOAD_PATH() {
		return fileUploadPathProperty.getTempFile();
	}
	private String UPLOAD_PATH() {
		return fileUploadPathProperty.getUploadFile();
	}
	
	
    @Autowired
    private ServletContext servletContext;  // Dependency - server runtimer library Apache tomcat 8.0

    

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login (HttpSession session, Authentication authentication) {
		listAuth(authentication);
		ModelAndView mv = new ModelAndView("/admin/login");
		return mv;
	}
	
	/**
	 * 로그인 성공후 이동할 페이지 지정
	 * @param session
	 * @param authentication
	 * @return
	 */
	@RequestMapping(value="/loginSuccess", method = RequestMethod.POST)
	public ModelAndView newsList (HttpSession session, Authentication authentication) 
	{
		listAuth(authentication);
		ModelAndView mv = new ModelAndView("redirect:/admin/news/list#");
		mv.getModel().put("p", "1");
		return mv;
	}
	
	@RequestMapping(value="/{boardName}/list", method = RequestMethod.GET)
	public ModelAndView newsList (HttpSession session, Authentication authentication,
			HttpServletRequest request,
			HttpServletResponse response,
			@PathVariable String boardName,
			@RequestParam(name="p", required=true) Integer pageNo,
			@RequestParam(name="v", required=false) String version) 
	{
		
		
		if (version == null) {
			
			ModelAndView mv = new ModelAndView("redirect:/admin/"+ boardName +"/list");
			mv.getModel().put("p", pageNo);
			mv.getModel().put("v", "PC_KOR");
			return mv;
		}
		
		logger.debug("pageNo :" + pageNo);
		logger.debug("version :" + version);
		
		ModelAndView mv = new ModelAndView("/admin/"+ boardName +"/list");
		PageRequest pageable = PageRequest.of(pageNo-1, 10, Sort.by(Direction.DESC, "boardContentId"));
		Board board = boardRepository.findByBoardName(boardName);
		logger.debug("board : {}",  board);

		if (StringUtils.isEmpty(version)) {
			Page<BoardContent> page = boardContentRepository.findByBoard(board, pageable);
			mv.addObject("page", page);
			makePagination(pageNo, version ,mv, page);
		}else {
			Page<BoardContent> page = boardContentRepository.findByBoardAndVersion(board, version, pageable);
			mv.addObject("page", page);
			makePagination(pageNo, version, mv, page);
		}
		
		
		// 페이지 번호 쿠키로 저장
		Cookie cookiePage = new Cookie("p", String.valueOf(pageNo));
		cookiePage.setMaxAge(360);
		response.addCookie(cookiePage);
		
		Cookie cookieVersion = new Cookie("v", String.valueOf(version));
		cookieVersion.setMaxAge(360);
		response.addCookie(cookieVersion);
		
		
		return mv;
	}
	


	/**
	 * 사용안함
	 * @param session
	 * @param authentication
	 * @param boardName
	 * @param itemNumber
	 * @return
	 */
	@RequestMapping(value="/{boardName}/view", method = RequestMethod.GET)
	public ModelAndView newsView (HttpSession session, Authentication authentication,
			@PathVariable String boardName,
			@RequestParam(name="num", required=true) Long itemNumber) {
		
		Board board = boardRepository.findByBoardName(boardName);
		List<BoardContent> boardContent = boardContentRepository.findByBoardAndItemNumber(board, itemNumber);
		logger.info("{}", boardContent);
		ModelAndView mv = new ModelAndView("/admin/" +boardName + "/view");
		mv.addObject("boardContent", boardContent);
		
		
		return mv;
	}
	
	@RequestMapping(value="/{boardName}/write", method = RequestMethod.GET)
	public ModelAndView newsWrite (HttpSession session, Authentication authentication,
			@PathVariable String boardName) {
		ModelAndView mv = new ModelAndView("/admin/" +boardName +"/write");
		return mv;
	}
	
	/**
	 * 페이지에서 submit 될 때 bind 순서가 중요함
	 * 반드시 pc_kor, pc_eng, mo_kor, mo_eng 순으로 bind 되어야 함
	 * @param session
	 * @param authentication
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/{boardName}/write", method = RequestMethod.POST)
	public ModelAndView newsWriteProc (HttpSession session, Authentication authentication,
			@CookieValue(name="p", defaultValue="1") String p,
			@CookieValue(name="v", defaultValue="PC_KOR") String v,
			@PathVariable String boardName,
			RedirectAttributes redirectAttributes,
			@ModelAttribute NewsWriteFormModel model
			) {
		logger.info(model.toString());
		/*
		[subject=[t1, , t3, ], content=[<p>aaaaa</p>, <p><br></p>, <p><br></p>, <p>ddddd</p>], fileName=[, , , ]]
		*/
		Board board = boardRepository.findByBoardName(boardName);
		
		Long itemNumber = boardContentRepository.nextItemNumberByBaord(board);
		logger.info("itemNumber : " + itemNumber);
		
		

		// 4. MO_ENG
		String subject_mo_ent = model.getSubject_MO_ENG();
		String content_mo_eng = model.getContent_MO_ENG();
		String filename_mo_eng = model.getFileName_MO_ENG();
		BoardContent mo_eng = new BoardContent();
		mo_eng.setBoard(board);
		mo_eng.setVersion("MO_ENG");
		mo_eng.setItemNumber(itemNumber);
		mo_eng.setSubject(subject_mo_ent);
		mo_eng.setContent(content_mo_eng);
		setTumbnailPath(filename_mo_eng, mo_eng);
		boardContentRepository.save(mo_eng);
		
		// 3. MO_KOR
		String subject_mo_kor = model.getSubject_MO_KOR();
		String content_mo_kor = model.getContent_MO_KOR();
		String filename_mo_kor = model.getFileName_MO_KOR();
		BoardContent mo_kor = new BoardContent();
		mo_kor.setBoard(board);
		mo_kor.setVersion("MO_KOR");
		mo_kor.setItemNumber(itemNumber);
		mo_kor.setSubject(subject_mo_kor);
		mo_kor.setContent(content_mo_kor);
		setTumbnailPath(filename_mo_kor, mo_kor);
		boardContentRepository.save(mo_kor);
		
		// 2. PC_ENG
		String subject_pc_eng = model.getSubject_PC_ENG();
		String content_pc_eng = model.getContent_PC_ENG();
		String filename_pc_eng = model.getFileName_PC_ENG();
		BoardContent pc_eng = new BoardContent();
		pc_eng.setBoard(board);
		pc_eng.setVersion("PC_ENG");
		pc_eng.setItemNumber(itemNumber);
		pc_eng.setSubject(subject_pc_eng);
		pc_eng.setContent(content_pc_eng);
		setTumbnailPath(filename_pc_eng, pc_eng);
		boardContentRepository.save(pc_eng);
		
		// 1. PC_KOR
		String subject_pc_kor = model.getSubject_PC_KOR();
		String content_pc_kor = model.getContent_PC_KOR();
		String filename_pc_kor = model.getFileName_PC_KOR();
		logger.debug("content_pc_kor : {}", content_pc_kor);
		
		
		BoardContent pc_kor = new BoardContent();
		pc_kor.setBoard(board);
		pc_kor.setVersion("PC_KOR");
		pc_kor.setItemNumber(itemNumber);
		pc_kor.setSubject(subject_pc_kor);
		pc_kor.setContent(content_pc_kor);
		setTumbnailPath(filename_pc_kor, pc_kor);
		boardContentRepository.save(pc_kor);

		
		redirectAttributes.addFlashAttribute("message", "등록 되었습니다.");
		return redirectToList(p, v, boardName);
	}
	
	


	/**
	 * 관리자 뉴스 수정 화면
	 * @param session
	 * @param authentication
	 * @param itemNumber
	 * @return
	 */
	@RequestMapping(value="/{boardName}/update", method = RequestMethod.GET)
	public ModelAndView newsUpdate (HttpSession session, Authentication authentication,
			@PathVariable String boardName,
			@RequestParam(name="num") Long itemNumber
			) {
		Board board = boardRepository.findByBoardName(boardName);
		List<BoardContent> boardContent = boardContentRepository.findByBoardAndItemNumber(board, itemNumber);
		logger.info("{}", boardContent);
		ModelAndView mv = new ModelAndView("/admin/" +boardName + "/update");
		mv.addObject("boardContent", boardContent);
				
		return mv;
	}
	
	/**
	 * 글 수정 처리
	 * @param session
	 * @param authentication
	 * @param boardName
	 * @param p
	 * @param v
	 * @param redirectAttributes
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/{boardName}/update", method = RequestMethod.POST)
	public ModelAndView newsUpdateProc (HttpSession session, Authentication authentication,
			@PathVariable String boardName,
			@CookieValue(name="p", defaultValue="1") String p,
			@CookieValue(name="v", defaultValue="PC_KOR") String v,
			RedirectAttributes redirectAttributes,
			@ModelAttribute NewsWriteFormModel model) 
	{		
		logger.info(model.toString());
		Long itemNumber = model.getNum();
		Board board = boardRepository.findByBoardName(boardName);
		List<BoardContent> boardContents = boardContentRepository.findByBoardAndItemNumber(board, itemNumber);
		
		// 1. PC_KOR
		String subject_pc_kor = model.getSubject_PC_KOR();
		String content_pc_kor = model.getContent_PC_KOR();
		String filename_pc_kor = model.getFileName_PC_KOR();
		logger.debug("content_pc_kor : {}", content_pc_kor);
		
		// 2. PC_ENG
		String subject_pc_eng = model.getSubject_PC_ENG();
		String content_pc_eng = model.getContent_PC_ENG();
		String filename_pc_eng = model.getFileName_PC_ENG();
		
		// 3. MO_KOR
		String subject_mo_kor = model.getSubject_MO_KOR();
		String content_mo_kor = model.getContent_MO_KOR();
		String filename_mo_kor = model.getFileName_MO_KOR();
		
		// 4. MO_ENG
		String subject_mo_ent = model.getSubject_MO_ENG();
		String content_mo_eng = model.getContent_MO_ENG();
		String filename_mo_eng = model.getFileName_MO_ENG();
		
		for (Iterator iterator = boardContents.iterator(); iterator.hasNext();) {
			BoardContent boardContent = (BoardContent) iterator.next();
			String version = boardContent.getVersion();
			if ("PC_KOR".equals(version)) {
				boardContent.setSubject(subject_pc_kor);
				boardContent.setContent(content_pc_kor);
				boardContent.setModifiedDate(new Date());
				if (StringUtils.isEmpty(filename_pc_kor)) {
					boardContent.setTumbnailPath("");
				}
				else if(!filename_pc_kor.equals(boardContent.getTumbnailPath())) {
					setTumbnailPath(filename_pc_kor, boardContent);
				}
				
				boardContentRepository.save(boardContent);
			}
			else if ("PC_ENG".equals(version)) {
				boardContent.setSubject(subject_pc_eng);
				boardContent.setContent(content_pc_eng);
				boardContent.setModifiedDate(new Date());
				if (StringUtils.isEmpty(filename_pc_eng)) {
					boardContent.setTumbnailPath("");
				}
				else if(!filename_pc_eng.equals(boardContent.getTumbnailPath())) {
					setTumbnailPath(filename_pc_eng, boardContent);
				}
				boardContentRepository.save(boardContent);
				
			}
			else if ("MO_KOR".equals(version)) {
				boardContent.setSubject(subject_mo_kor);
				boardContent.setContent(content_mo_kor);
				boardContent.setModifiedDate(new Date());
				if (StringUtils.isEmpty(filename_mo_kor)) {
					boardContent.setTumbnailPath("");
				}
				else if(!filename_mo_kor.equals(boardContent.getTumbnailPath())) {
					setTumbnailPath(filename_mo_kor, boardContent);
				}
				boardContentRepository.save(boardContent);
			}
			else if ("MO_ENG".equals(version)) {
				boardContent.setSubject(subject_mo_ent);
				boardContent.setContent(content_mo_eng);
				boardContent.setModifiedDate(new Date());
				if (StringUtils.isEmpty(filename_mo_eng)) {
					boardContent.setTumbnailPath("");
				}
				else if(!filename_mo_eng.equals(boardContent.getTumbnailPath())) {
					setTumbnailPath(filename_mo_eng, boardContent);
				}
				boardContentRepository.save(boardContent);
			}
		}
		
		redirectAttributes.addFlashAttribute("message", "수정 되었습니다.");
		return redirectToList(p, v, boardName);
	}
	
	/**
	 * 글 삭제 처리
	 * @param session
	 * @param authentication
	 * @param boardName
	 * @param p
	 * @param v
	 * @param redirectAttributes
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/{boardName}/delete", method = RequestMethod.POST)
	public ModelAndView newsDeleteProc (HttpSession session, Authentication authentication,
			@PathVariable String boardName,
			@CookieValue(name="p", defaultValue="1") String p,
			@CookieValue(name="v", defaultValue="PC_KOR") String v,
			RedirectAttributes redirectAttributes,
			@ModelAttribute NewsWriteFormModel model) 
	{		
		logger.info(model.toString());
		Long itemNumber = model.getNum();
		Board board = boardRepository.findByBoardName(boardName);
		List<BoardContent> boardContents = boardContentRepository.findByBoardAndItemNumber(board, itemNumber);
		boardContentRepository.deleteAll(boardContents);
		
		redirectAttributes.addFlashAttribute("message", "삭제 되었습니다.");
		return redirectToList(p, v, boardName);
	}
	
	
	
	
	 
	
	/**
	 * AJAX temp 파일 업로드 처리
	 * @param session
	 * @param authentication
	 * @param file
	 * @return
	 */
	@RequestMapping(value="/tmpFileUpload", method = RequestMethod.POST)
	public @ResponseBody CommonAjaxResponse tmpFileUpload (HttpServletRequest request ,HttpSession session, Authentication authentication,
			@RequestParam("file") MultipartFile multipartFile
			) {
		
		if (multipartFile.isEmpty()) {
			logger.debug("file empty!!!");
			return new CommonAjaxResponse();
		}
		
		String baseName = FilenameUtils.getBaseName(multipartFile.getOriginalFilename());
		String extension = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
		String fileName = baseName +"."+ extension;
		
		logger.debug("file fileName : " + fileName);
		logger.debug("file baseName : " + baseName);
		logger.debug("file extension : " + extension);
		
		File directory = new File(TMP_FILE_UPLOAD_PATH());
		directory.mkdirs();
		File file = new File(TMP_FILE_UPLOAD_PATH(), fileName);
		
		// overwrite 방지
		int postfix = 1;
		while(file.exists()){
			fileName = baseName +"_"+ String.valueOf(postfix) + "." + extension;
			file = new File(directory, fileName);
			postfix += 1;
		}
		logger.debug("file path : " + file.toString());
		
		String contextPath = servletContext.getContextPath();
		logger.debug("servletContext path : " + contextPath);
		String pathToResponse = Paths.get(contextPath, "admin/tmpFileUpload", fileName).toString();  // BoardController : ReqeustMapping 'tmpFileUpload'
		logger.debug("pathToResponse path : " + pathToResponse);
		
		
		try {
			multipartFile.transferTo(file); // overwrite
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		CommonAjaxResponse commonAjaxResponse = new CommonAjaxResponse();
		commonAjaxResponse.setFilePath(pathToResponse); // 임시 업로드된 파일 경로를 반환함
		commonAjaxResponse.setFileName(fileName); // 저장된 파일이름
		return commonAjaxResponse;
		
	}
	
	/**
	 * 임시 업로드된 파일 읽기
	 * @param request
	 * @param response
	 * @param fileName
	 */
	@RequestMapping(value="/tmpFileUpload/{fileName}", method = RequestMethod.GET)
	public void tmpFileUploadRead (HttpServletRequest request, HttpServletResponse response,
			@PathVariable String fileName) {
		
		File file = new File(TMP_FILE_UPLOAD_PATH(), fileName);
		logger.debug("file Path : " + file.toString());
		
		if (file.exists()) {
			String extension = FilenameUtils.getExtension(fileName);
			InputStream targetStream  = null;
			ServletOutputStream outputStream = null;
			try {
				targetStream = new FileInputStream(file);
				if (extension.toLowerCase().indexOf("png") != -1){
					response.setContentType("image/png");
				}else if (extension.toLowerCase().indexOf("jpeg") != -1){
					response.setContentType("image/jpeg");
				}else if (extension.toLowerCase().indexOf("jpg") != -1){
					response.setContentType("image/jpeg");
				}else if (extension.toLowerCase().indexOf("gif") != -1){
					response.setContentType("image/gif");
				}else{
					response.setContentType("application/octet-stream"); // mime type 이 이미지로 지정되지 않으면 다운로드로 실행됨
				}
				
				outputStream = response.getOutputStream();
				byte[] readBuffer = new byte[1024];
				while (targetStream.read(readBuffer, 0, readBuffer.length) != -1){
					outputStream.write(readBuffer);
				}
				response.flushBuffer();
				
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e){
				e.printStackTrace();
			} finally {
				try {
					targetStream.close();
					outputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}else {
			logger.error("file Path FILE NOT EXISTS : " + file.toString());
		}
		
		return;
	}
	
	
	private ModelAndView redirectToList(String p, String v, String boardName) {
		ModelAndView mv = new ModelAndView("redirect:/admin/" + boardName +"/list");
		mv.getModel().put("p", p);
		mv.getModel().put("v", v);
		return mv;
	}
	

	private void makePagination(Integer pageNo, String version, ModelAndView mv, Page<BoardContent> page) {
		PaginationUtil.makeAdminPagination(pageNo, version, mv, page);
	}

	
	void listAuth(Authentication authentication) {
		if (authentication != null){    
			String msg = "";
			if (authentication.isAuthenticated()) {
				System.out.println("isAuthenticated");
			}
			for (GrantedAuthority authority : authentication.getAuthorities()) {
			     String role = authority.getAuthority();
	                     msg+= "name:	" + authentication.getName()+", You have "+ role;
			}
			System.out.println(msg);
	    }else {
	    	System.out.println("authentication null");
	    }
	}
	
	
	/**
	 * 임시 저장 경로의 파일을 실 저장 공간으로 옮김
	 * @param filename
	 * @param bc
	 */
	private void setTumbnailPath(String filename, BoardContent bc) {
		if (StringUtils.isEmpty(filename)) {
			return;
		}
		
		File file = new File(TMP_FILE_UPLOAD_PATH(), filename);
		if (file.exists() && file.isFile() && !file.isDirectory()) {
			File destFile = new File(UPLOAD_PATH(), filename);
			destFile = renameFileToPreventOverwrite(destFile);
			boolean renameTo = file.renameTo(destFile);
			if (!renameTo) {
				try {
					FileUtils.copyFile(file, destFile);
				} catch (IOException e) {
					e.printStackTrace();
					logger.error("COPY FILE ERROR " + destFile.getPath());
				}
			}
			logger.debug("thumbnail path : {}", destFile.getName());
			bc.setTumbnailPath(FilenameUtils.getName(destFile.getName()));
		}
	}
	
	private File renameFileToPreventOverwrite(File file) {
		String baseName = FilenameUtils.getBaseName(file.getName());
		String extension = FilenameUtils.getExtension(file.getName());
		String fileName = baseName +"."+ extension;
		int postfix = 1;
		while(file.exists()){
			fileName = baseName +"_"+ String.valueOf(postfix) + "." + extension;
			file = new File(file.getParent(), fileName);
			postfix += 1;
		}
		file.getParentFile().mkdirs();
		return file;
	}
	
	
	
	@RequestMapping(value="/naverEditorSkin", method = RequestMethod.GET)
	public ModelAndView naverEditorSkin (HttpServletRequest request, HttpServletResponse response) throws IOException {
		return new ModelAndView("/admin/SmartEditor2Skin");
	}
	
	
	@RequestMapping(value="/naverImageUpload", method = RequestMethod.POST)
	public @ResponseBody CommonAjaxResponse naverImageUpload (HttpServletRequest request, HttpServletResponse response,
			@RequestParam("file") MultipartFile multipartFile) throws IOException {
		
		
		String baseName = FilenameUtils.getBaseName(multipartFile.getOriginalFilename());
		String extension = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
		String fileName = baseName +"."+ extension;
		
		logger.debug("file fileName : " + fileName);
		logger.debug("file baseName : " + baseName);
		logger.debug("file extension : " + extension);
		
		File directory = new File(UPLOAD_PATH());
		directory.mkdirs();
		File file = new File(UPLOAD_PATH(), fileName);
		
		// overwrite 방지
		int postfix = 1;
		while(file.exists()){
			fileName = baseName +"_"+ String.valueOf(postfix) + "." + extension;
			file = new File(directory, fileName);
			postfix += 1;
		}
		logger.debug("file path : " + file.toString());
		
		String contextPath = servletContext.getContextPath();
		logger.debug("servletContext path : " + contextPath);
		String pathToResponse = Paths.get(contextPath, "uploadFile", fileName).toString();  // BoardController : ReqeustMapping 'tmpFileUpload'
		logger.debug("pathToResponse path : " + pathToResponse);
		
		
		try {
			multipartFile.transferTo(file); // overwrite
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
	    
		CommonAjaxResponse commonAjaxResponse = new CommonAjaxResponse();
		commonAjaxResponse.setFilePath(pathToResponse); // 임시 업로드된 파일 경로를 반환함
		commonAjaxResponse.setFileName(fileName); // 저장된 파일이름
		return commonAjaxResponse;
	    
	}

	
}
