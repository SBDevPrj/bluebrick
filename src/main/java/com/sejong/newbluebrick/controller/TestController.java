package com.sejong.newbluebrick.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sejong.newbluebrick.model.Board;
import com.sejong.newbluebrick.model.BoardContent;
import com.sejong.newbluebrick.repository.BoardRepository;

@Controller
public class TestController {
	
	@Autowired
	BoardRepository boardRepository;
	
	@RequestMapping("/insert")
	public ModelAndView insert() {
		ModelAndView mv = new ModelAndView("/list");
		
		Board board = new Board("testboard7");
		boardRepository.save(board);
		
		return mv;
	}
	
	@RequestMapping("/update")
	public ModelAndView update() {
		ModelAndView mv = new ModelAndView("/list");
		return mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(){
		ModelAndView mv = new ModelAndView("/list");
		return mv;
	}
	
	@RequestMapping("/selectOne")
	public ModelAndView selectOne(){
		ModelAndView mv = new ModelAndView("/list");
		
		System.out.println("=====findAll====");
		Iterable<Board> findAll = boardRepository.findAll();
		findAll.forEach(board -> {
			System.out.println(board);
		});
		
		System.out.println("=====byBoardName====");
		Board byBoardName = boardRepository.findByBoardName("notice");
		System.out.println(byBoardName);
		
		
		return mv;
	}
	
	
	@RequestMapping("/test")
	public ModelAndView test(){
		ModelAndView mv = new ModelAndView("list");
		
		System.out.println("=====findAll====");
		Iterable<Board> findAll = boardRepository.findAll();
		findAll.forEach(board -> {
			System.out.println(board);
		});
		
		System.out.println("=====byBoardName[1]====");
		Board boardName1 = boardRepository.findByBoardName("notice");
		System.out.println(boardName1); // com.bluebrick.board.model.Board@1db6738b
		
		System.out.println("=====byBoardName[2]====");
		Board boardName2 = boardRepository.findByBoardName("nothing");
		System.out.println(boardName2); // null
		
		System.out.println("=====getBoardContent====");
		List<BoardContent> boardContent = boardName1.getBoardContent();
		boardContent.forEach(bc -> {
			System.out.println(bc);
		});
		
		
		return mv;
	}
	
	@RequestMapping("/selectPage")
	public ModelAndView selectPage(){
		ModelAndView mv = new ModelAndView("list");
		return mv;
		
	}
	
	@RequestMapping("/sessionGET")
	public ModelAndView sessionGET(HttpSession session){
		ModelAndView mv = new ModelAndView("list");
		
		String id = session.getId();
		System.out.println(id); // 84598b15-ffbc-4945-a4b4-767528a294df
		
		String admin = (String)session.getAttribute("admin");
		System.out.println(admin);
		
		
		return mv;
		
	}
	
	@RequestMapping("/sessionSET")
	public ModelAndView sessionSET(HttpSession session){
		ModelAndView mv = new ModelAndView("list");
		session.setAttribute("admin", "namgyu");
		return mv;
		
	}
	
	
	@RequestMapping("/raiseError")
	public ModelAndView raiseError(HttpSession session) throws Exception{
		
		throw new Exception("dddddd");
		
	}
	
	
	@RequestMapping("/testPage")
	public ModelAndView testPage(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("test");
		return mv;
	}
	
	
	@RequestMapping("/editor")
	public ModelAndView editor() {
		ModelAndView mv = new ModelAndView("/SmartEditor2");
		
		return mv;
	}
	

	
	
	
}
