package com.sejong.newbluebrick.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sejong.newbluebrick.config.FileUploadPathProperty;
import com.sejong.newbluebrick.model.Board;
import com.sejong.newbluebrick.model.BoardContent;
import com.sejong.newbluebrick.repository.BoardContentRepository;
import com.sejong.newbluebrick.repository.BoardRepository;
import com.sejong.newbluebrick.response.CommonAjaxResponse;
import com.sejong.newbluebrick.utils.PaginationUtil;

@Controller
public class BoardController {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	BoardRepository boardRepository;
	
	@Autowired
	BoardContentRepository boardContentRepository;
	
	
	
	/**
	 * 뉴스 2개 , 알림 1개
	 * 모바일에서는 뉴스 2개, 알림 2개
	 * @param device
	 * @param lang
	 * @return
	 */
	@RequestMapping("/")
	public ModelAndView index(Device device,
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang,
			@RequestParam (name="link", defaultValue="introduce", required=false) String link) {
		
		String version = getVersion(device, lang);
		logger.debug("version {}", version);
		
		Board news = boardRepository.findByBoardName("news");
		Board notice = boardRepository.findByBoardName("notice");
		
		PageRequest pageable = PageRequest.of(0, 2, Sort.by(Direction.DESC, "board_content_id"));
		Page<BoardContent> mainNoticeList = boardContentRepository.boardList(notice, version, pageable);  // 알림 2개
		Page<BoardContent> mainNewsList = boardContentRepository.boardList(news, version, pageable);  // 뉴스 2개
		
		List<BoardContent> noticeList = mainNoticeList.getContent();
		List<BoardContent> newsList = mainNewsList.getContent();
		
		ModelAndView mobileResolve = mobileResolve(device ,lang, "/index");

		
		if (noticeList.size() > 0) {
			mobileResolve.addObject("mainNoticeFirst", noticeList.get(0));
		}
		if (noticeList.size() > 1) {
			mobileResolve.addObject("mainNoticeSecond", noticeList.get(1));
		}
		
		
		if (newsList.size() > 0) {
			mobileResolve.addObject("mainNewsFirst", newsList.get(0));
		}
		if (newsList.size() > 1) {
			mobileResolve.addObject("mainNewsSecond", newsList.get(1));
		}
		
		logger.debug("mainNotice {}", mainNoticeList);
		logger.debug("mainNewsList {}", mainNewsList);
		
		return mobileResolve;
	}
	
	
	/**
	 * 리스트 페이지 처리
	 * @param device
	 * @param lang
	 * @param boardName
	 * @param pageNo
	 * @param search
	 * @return
	 */
	@RequestMapping("/{boardName}/list")
	public ModelAndView newsList(Device device, 
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang,
			@PathVariable String boardName,
			@RequestParam(name="p", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(name="search", required=false) String search) {
		
		String version = getVersion(device, lang);
		
		PageRequest pageable = null;
		if (device.isNormal()) {
			pageable = PageRequest.of(pageNo-1, 6, Sort.by(Direction.DESC, "board_content_id"));
		}else {
			pageable = PageRequest.of(0, 6 + (pageNo-1) * 6, Sort.by(Direction.DESC, "board_content_id"));  // 모바일에서는 페이지 구조가 다름 1페이지 부터 해당 페이지 내용 모두 표시하여야 함
		}
		Board board = boardRepository.findByBoardName(boardName);
		Page<BoardContent> page = null;
		if (search != null && !"".equals(search)) {
			page = boardContentRepository.boardSearch(board, version, search, pageable);
		}else {
			page = boardContentRepository.boardList(board, version,pageable);
		}
		logger.debug("page content {}", page.getContent());
		ModelAndView mobileResolve = mobileResolve(device ,lang, "/"+ boardName +"/list");
		mobileResolve.addObject("page", page);
		makePagination(pageNo, lang, mobileResolve,  page);
		return mobileResolve;
	}
	
	/**
	 * 모바일에서 리스트 더불러오기 실행시
	 * @param device
	 * @param lang
	 * @param boardName
	 * @param pageNo
	 * @param search
	 * @return
	 */
	@RequestMapping("/{boardName}/list/more")
	public @ResponseBody CommonAjaxResponse newsListMore(Device device, 
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang,
			@PathVariable String boardName,
			@RequestParam(name="p", required=false, defaultValue="1") Integer pageNo,
			@RequestParam(name="search", required=false) String search) {
		
		String version = getVersion(device, lang);
		
		logger.debug("pageNo : {}", pageNo);
		logger.debug("version : {}", version);
		
		PageRequest pageable = PageRequest.of(pageNo-1, 6, Sort.by(Direction.DESC, "board_content_id"));
		Board board = boardRepository.findByBoardName(boardName);
		Page<BoardContent> page = boardContentRepository.boardList(board, version, pageable);

		CommonAjaxResponse commonAjaxResponse = new CommonAjaxResponse();
		commonAjaxResponse.setBoardContentList(page.getContent());
		return commonAjaxResponse;
	}
	
	
	
	/**
	 * 해당 게시물의 내용
	 * 다른 게시물의 내용 3개
	 * @param device
	 * @param lang
	 * @param boardName
	 * @param itemNumber
	 * @return
	 */
	@RequestMapping("/{boardName}/view")
	public ModelAndView newsList(Device device, 
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang,
			@PathVariable String boardName,
			@RequestParam(name="num", required=true) Long itemNumber) {
		
		logger.debug("view {}", itemNumber);
		if (itemNumber == null) {
			return new ModelAndView("redirect:/" + boardName +"/list?lang=" + lang);
		}
		
		String version = getVersion(device, lang);
		Board board = boardRepository.findByBoardName(boardName);
		BoardContent boardContent = boardContentRepository.findByBoardAndItemNumberAndVersion(board, itemNumber, version);
		logger.info("{}", boardContent);
		
		ModelAndView mobileResolve = mobileResolve(device ,lang, "/"+ boardName +"/view");
		mobileResolve.addObject("boardContent", boardContent);
		
		PageRequest pageable = PageRequest.of(0, 4, Sort.by(Direction.DESC, "board_content_id"));

		// itemNumber 가 같지 않은 게시물 3개 추출
		Page<BoardContent> page = boardContentRepository.boardList(board, version, pageable);
		List<BoardContent> pageList = new ArrayList<BoardContent>();
		
		int addCount = 0;
		for (BoardContent c :page.getContent()) {
			if (addCount > 2) {
				break;
			}
			if (c.getItemNumber() != itemNumber) {
				pageList.add(c);
				addCount += 1;
			}
		}
		
		mobileResolve.addObject("page", pageList);
		
		return mobileResolve;
		
	}
	
	/**
	 * 약관 페이지
	 * @param device
	 * @param lang
	 * @return
	 */
	@RequestMapping("/privacy")
	public ModelAndView privacy(Device device, 
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang) {
		
		ModelAndView mobileResolve = mobileResolve(device ,lang, "/privacy");
		return mobileResolve;
	}
	
	/**
	 * 기술 페이지
	 * @param device
	 * @param lang
	 * @return
	 */
	@RequestMapping("/technical")
	public ModelAndView technical(Device device, 
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang) {
		
		ModelAndView mobileResolve = mobileResolve(device ,lang, "/technical");
		return mobileResolve;
	}
	
	/**
	 * 소개 페이지
	 * @param device
	 * @param lang
	 * @return
	 */
	@RequestMapping("/introduce")
	public ModelAndView introduce(Device device, 
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang) {
		
		ModelAndView mobileResolve = mobileResolve(device ,lang, "/introduce");
		return mobileResolve;
	}
	
	@RequestMapping("/advantage")
	public ModelAndView advantage(Device device, 
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang) {
		
		ModelAndView mobileResolve = mobileResolve(device ,lang, "/advantage");
		return mobileResolve;
	}
	
	@RequestMapping("/photo_uploader/popup")
	public ModelAndView photoUploader(Device device, 
			@RequestParam (name="lang", defaultValue="kr", required=false) String lang) {
		
		return new ModelAndView("/admin/photo_uploader");
	}
	
	
	
	
	
	
	
	private void makePagination(Integer pageNo, String lang, ModelAndView mv, Page<BoardContent> page) {
		PaginationUtil.makePagination(pageNo, lang, mv, page);
	}

	private String getVersion(Device device, String lang) {
		String versionPrefix = "PC";
		String versionSubfix = "KOR";
		if (device.isMobile()) {
			versionPrefix = "MO";
		} else if (device.isTablet()) {
			versionPrefix = "MO";
		}
		
		if (lang.equals("en")) {
			versionSubfix = "ENG";
		}
		
		return versionPrefix + "_" + versionSubfix;
	}
	
	

	/**
	 * NewBlueBrickMvcConfig 의 설정을 사용하려 하였지만,
	 * 일정이 급한 관계로 버전별 페이지별가 별도로 전달받아 NewBlueBrickMvcConfig 기능은 사용하지 않음
	 * 모바일 , PC / KOR, ENG 페이지 분기
	 * @param device
	 * @param viewName
	 * @return
	 */
	private ModelAndView mobileResolve(Device device,String lang, String viewName) {
		if (device.isMobile()) {
			if (lang.equals("en")) {
				viewName = "/mobile/en" + viewName;
			}else {
				viewName = "/mobile/kr" + viewName;
			}
		} else if (device.isTablet()) {
			if (lang.equals("en")) {
				viewName = "/mobile/en" + viewName;
			}else {
				viewName = "/mobile/kr" + viewName;
			}
		} else {
			if (lang.equals("en")) {
				viewName = "/pc/en" + viewName;
			}else {
				viewName = "/pc/kr" + viewName;
			}
		}
		
		ModelAndView modelAndView = new ModelAndView(viewName);
		return modelAndView;
	}
	
	
	@Autowired
	private FileUploadPathProperty fileUploadPathProperty;
	private String UPLOAD_PATH() {
		return fileUploadPathProperty.getUploadFile();
	}
	
	/**
	 * 임시 업로드된 파일 읽기
	 * @param request
	 * @param response
	 * @param fileName
	 */
	@RequestMapping(value="/uploadFile/{fileName}", method = RequestMethod.GET)
	public void tmpFileUploadRead (HttpServletRequest request, HttpServletResponse response,
			@PathVariable String fileName) {
		
		File file = new File(UPLOAD_PATH(), fileName);
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
	
}
