package com.sejong.newbluebrick.response;

import java.util.List;

import com.sejong.newbluebrick.model.BoardContent;

public class CommonAjaxResponse {

	private boolean ok = true;
	private String message = "";
	private String filePath = null;
	private String fileName = null;
	private String errorCode = null;
	private List<BoardContent> boardContentList = null;
	
	
	public List<BoardContent> getBoardContentList() {
		return boardContentList;
	}
	public void setBoardContentList(List<BoardContent> boardContentList) {
		this.boardContentList = boardContentList;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public boolean isOk() {
		return ok;
	}
	public void setOk(boolean ok) {
		this.ok = ok;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}


	
}
