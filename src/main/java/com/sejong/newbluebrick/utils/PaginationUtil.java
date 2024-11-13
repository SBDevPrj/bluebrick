package com.sejong.newbluebrick.utils;

import org.springframework.data.domain.Page;
import org.springframework.web.servlet.ModelAndView;

import com.sejong.newbluebrick.model.BoardContent;

public class PaginationUtil {
	
	/**
	 * ADD pagination Object named "pagination" To Model.
	 * pagination : HTML tags about pagination
	 * @param pageNo
	 * @param version
	 * @param mv
	 * @param page
	 */
	public static void makeAdminPagination(Integer pageNo, String version, ModelAndView mv, Page<BoardContent> page) {
		
		// 1,2,3,4,5,6,7,8,9,10
		// 11,12,13,14,15,16,17,18,19,20
		// 21,22,23,24,25,26,27,28,29,30
		// 31,32,33,34,35,36,37,38,39,40
		
		Integer fromPageNum = pageNo - (pageNo % 10) + 1;
		Integer toPageNum = (pageNo + 10) - (pageNo % 10);
		Integer lastPageNum = page.getTotalPages();
		if (toPageNum > lastPageNum) {
			toPageNum = lastPageNum;
		}
		
		Integer prevFromPageNum = fromPageNum - 10;
		Integer nextFromPageNum = fromPageNum + 10;
		
		
		StringBuilder sb = new StringBuilder();
		sb.append("<div class='pagination'>");
		sb.append("<ul class='pagination'>");
		if (prevFromPageNum > 0) {
			sb.append("<li class='page-pre'><a href='?p=" + prevFromPageNum + "'><</a></li>");
		}
		
		for (int i=fromPageNum; i < toPageNum + 1 ; i++) {
			if (i == pageNo) {
				sb.append("<li class='page-number active'><a href='?p=" + i + "&v="+ version +"'>" + i + "</li>");
			}else {
				sb.append("<li class='page-number'><a href='?p=" + i + "&v="+ version +"'>" + i + "</li>");
			}
		}
		
		if (nextFromPageNum <= lastPageNum) {
			sb.append("<li class='page-next'><a href='?p=" + nextFromPageNum + "'>></a></li>");
		}
		sb.append("</ul>");
		sb.append("</div>");
		
		
		mv.addObject("pagination", sb.toString());
		
	}
	
	
	
	
	
	
	public static void makePagination(Integer pageNo, String lang, ModelAndView mv, Page<BoardContent> page) {
		
		// 1,2,3,4,5,6,7,8,9,10
		// 11,12,13,14,15,16,17,18,19,20
		// 21,22,23,24,25,26,27,28,29,30
		// 31,32,33,34,35,36,37,38,39,40
		
		/*
		<div class="paging_mc">
		    <a href=""><span class="ic-sets ty4-1"></span></a>
		    <a href=""><span class="ic-sets ty4-2"></span></a>
		    <a href="" class="num on">1</a>
		    <a href="" class="num">2</a>
		    <a href="" class="num">3</a>
		    <a href="" class="num">4</a>
		    <a href="" class="num">5</a>
		    <a href="" class="num">6</a>
		    <a href="" class="num">7</a>
		    <a href="" class="num">8</a>
		    <a href="" class="num">9</a>
		    <a href="" class="num">10</a>
		    <a href=""><span class="ic-sets ty4-3"></span></a>
		    <a href=""><span class="ic-sets ty4-4"></span></a>
		</div>
		*/
		
		Integer fromPageNum = pageNo - (pageNo % 10) + 1;
		Integer toPageNum = (pageNo + 10) - (pageNo % 10);
		Integer lastPageNum = page.getTotalPages();
		if (toPageNum > lastPageNum) {
			toPageNum = lastPageNum;
		}
		
		Integer prevFromPageNum = fromPageNum - 10;
		Integer nextFromPageNum = fromPageNum + 10;
		
		Integer beforePageNum = pageNo - 1;
		if (beforePageNum < 1) {
			beforePageNum = 1;
		}
		
		Integer nextPageNum = pageNo + 1;
		if (nextPageNum > lastPageNum) {
			nextPageNum = lastPageNum;
		}
		
		
		StringBuilder sb = new StringBuilder();
		sb.append("<div class='paging_mc'>");
		sb.append("<a href='?p=1&lang=" +lang +"'><span class='ic-sets ty4-1'></span></a>");
		sb.append("<a href='?p=" + beforePageNum + "&lang="+ lang +"'><span class='ic-sets ty4-2'></span></a>");
		
		for (int i=fromPageNum; i < toPageNum + 1 ; i++) {
			if (i == pageNo) {
				sb.append("<a class='num on' href='?p=" + i + "&lang="+ lang +"'>" + i + "</a>");
			}else {
				sb.append("<a class='num' href='?p=" + i + "&lang="+ lang +"'>" + i + "</a>");
			}
		}
		
		sb.append("<a href='?p=" + nextPageNum + "&lang="+ lang +"'><span class='ic-sets ty4-4'></span></a>");
		sb.append("<a href='?p="+ lastPageNum +"&lang="+ lang + "'><span class='ic-sets ty4-3'></span></a>");
		
		sb.append("</div>");
		
		
		mv.addObject("pagination", sb.toString());
		
	}
	
	
	public static void makePagination10turnBase(Integer pageNo, String lang, ModelAndView mv, Page<BoardContent> page) {
		
		// 1,2,3,4,5,6,7,8,9,10
		// 11,12,13,14,15,16,17,18,19,20
		// 21,22,23,24,25,26,27,28,29,30
		// 31,32,33,34,35,36,37,38,39,40
		
		/*
		<div class="paging_mc">
		    <a href=""><span class="ic-sets ty4-1"></span></a>
		    <a href=""><span class="ic-sets ty4-2"></span></a>
		    <a href="" class="num on">1</a>
		    <a href="" class="num">2</a>
		    <a href="" class="num">3</a>
		    <a href="" class="num">4</a>
		    <a href="" class="num">5</a>
		    <a href="" class="num">6</a>
		    <a href="" class="num">7</a>
		    <a href="" class="num">8</a>
		    <a href="" class="num">9</a>
		    <a href="" class="num">10</a>
		    <a href=""><span class="ic-sets ty4-3"></span></a>
		    <a href=""><span class="ic-sets ty4-4"></span></a>
		</div>
		*/
		
		Integer fromPageNum = pageNo - (pageNo % 10) + 1;
		Integer toPageNum = (pageNo + 10) - (pageNo % 10);
		Integer lastPageNum = page.getTotalPages();
		if (toPageNum > lastPageNum) {
			toPageNum = lastPageNum;
		}
		
		Integer prevFromPageNum = fromPageNum - 10;
		Integer nextFromPageNum = fromPageNum + 10;
		
		
		StringBuilder sb = new StringBuilder();
		sb.append("<div class='paging_mc'>");
		if (prevFromPageNum > 0) {
			sb.append("<a href='?p=1&lang=" +lang +"'><span class='ic-sets ty4-1'></span></a>");
			sb.append("<a href='?p=" + prevFromPageNum + "&lang="+ lang +"'><span class='ic-sets ty4-2'></span></a>");
		}
		
		for (int i=fromPageNum; i < toPageNum + 1 ; i++) {
			if (i == pageNo) {
				sb.append("<a class='num on' href='?p=" + i + "&lang="+ lang +"'>" + i + "</a>");
			}else {
				sb.append("<a class='num' href='?p=" + i + "&lang="+ lang +"'>" + i + "</a>");
			}
		}
		
		if (nextFromPageNum <= lastPageNum) {
			sb.append("<a href='?p=" + nextFromPageNum + "&lang="+ lang +"'><span class='ic-sets ty4-4'></span></a>");
			sb.append("<a href='?p="+ lastPageNum +"&lang="+ lang + "'><span class='ic-sets ty4-3'></span></a>");
		}
		
		sb.append("</div>");
		
		
		mv.addObject("pagination", sb.toString());
		
	}
	
	
	
}
