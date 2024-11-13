package com.sejong.newbluebrick.form;

import java.util.List;
import org.apache.commons.text.StringEscapeUtils;

public class NewsWriteFormModel {

	private Long num;
	
	private List<String> subject;
	private List<String> content;
	private List<String> fileName;
	
	
	
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public List<String> getSubject() {
		return subject;
	}
	public void setSubject(List<String> subject) {
		this.subject = subject;
	}
	public List<String> getContent() {
		return content;
	}
	public void setContent(List<String> content) {
		this.content = content;
	}
	public List<String> getFileName() {
		return fileName;
	}
	public void setFileName(List<String> fileName) {
		this.fileName = fileName;
	}
	
	


	@Override
	public String toString() {
		return "NewsWriteFormModel [num=" + num + ", subject=" + subject + ", content=" + content + ", fileName="
				+ fileName + "]";
	}
	// subject
	public String getSubject_PC_KOR() {
		return StringEscapeUtils.escapeHtml4(subject.get(0));
	}
	
	public String getSubject_PC_ENG() {
		return StringEscapeUtils.escapeHtml4(subject.get(1));
	}
	
	public String getSubject_MO_KOR() {
		return StringEscapeUtils.escapeHtml4(subject.get(2));
	}
	
	public String getSubject_MO_ENG() {
		return StringEscapeUtils.escapeHtml4(subject.get(3));
	}
	
	// content naver editor script error preventing replacing
	public String getContent_PC_KOR() {
		//return StringEscapeUtils.escapeEcmaScript(content.get(0));
		return content.get(0);
	}
	
	public String getContent_PC_ENG() {
		return content.get(1);
	}
	
	public String getContent_MO_KOR() {
		return content.get(2);
	}
	
	public String getContent_MO_ENG() {
		return content.get(3);
	}
	
	
	// filename
	public String getFileName_PC_KOR() {
		return fileName.get(0);
	}
	
	public String getFileName_PC_ENG() {
		return fileName.get(1);
	}
	
	public String getFileName_MO_KOR() {
		return fileName.get(2);
	}
	
	public String getFileName_MO_ENG() {
		return fileName.get(3);
	}
	
	
}
