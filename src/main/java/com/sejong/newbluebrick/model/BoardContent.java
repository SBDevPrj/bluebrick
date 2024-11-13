package com.sejong.newbluebrick.model;

import java.util.Date;
import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.commons.text.StringEscapeUtils;
import org.jsoup.Jsoup;
import org.springframework.format.datetime.DateFormatter;

import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.Index;


// http://www.java2s.com/Tutorials/Java/JPA/0920__JPA_ManyToOne_Join_Column.htm

@Entity
@Table(name = "board_content", indexes= {@Index(columnList="board_id,item_number")})
public class BoardContent {

	public BoardContent() {

	}
	
	
	
	@Override
	public String toString() {
		return "BoardContent [boardContentId=" + boardContentId + ", board=" + board + ", subject=" + subject
				+ ", itemNumber=" + itemNumber + ", content=" + content + ", insertedDate=" + insertedDate
				+ ", modifiedDate=" + modifiedDate + "]";
	}



	@Id
	@Column(name="board_content_id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long boardContentId;
	
	@ManyToOne
	@JoinColumn(name="board_id", referencedColumnName="board_id")
	@JsonIgnore
	private Board board;
	   
    private String subject;
    
    private String tumbnailPath;
    
    // PC_KOR, PC_ENG, MO_KOR, MO_ENG
    private String version;
    
    @Column(name="item_number")
    private Long itemNumber;
    
    @Column(length = 100000000)
    @JsonIgnore
    private String content;
    
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="inserted_date")
    private Date insertedDate = new Date();
    
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="modified_date")
    private Date modifiedDate  = new Date();

    @JsonProperty
    public String contentForList() {
    	if (content == null) {
    		return "";
    	}
    	if (content == "") {
    		return "";
    	}
//        return Jsoup.parse(StringEscapeUtils.unescapeEcmaScript(content)).text();
        return Jsoup.parse(content).text();
    }
    
    public String contentForView() {
    	if (content == null) {
    		return "";
    	}
    	if (content == "") {
    		return "";
    	}
        //return StringEscapeUtils.unescapeEcmaScript(content);
    	return content;
    }
    
    
    public String getInsertedDateFormatted() {
    	if (insertedDate == null) {
    		return "";
    	}
    	DateFormatter dateFormatter = new DateFormatter("yyyy.MM.dd");
    	return dateFormatter.print(insertedDate, Locale.getDefault());
    }
    
    
	public String getVersion() {
		return version;
	}


	public void setVersion(String version) {
		this.version = version;
	}



	public String getTumbnailPath() {
		if ("null".equals(tumbnailPath)) {
			return "";
		}
		if (tumbnailPath == null) {
			return "";
		}
		return tumbnailPath;
	}



	public void setTumbnailPath(String tumbnailPath) {
		this.tumbnailPath = tumbnailPath;
	}



	public Long getItemNumber() {
		return itemNumber;
	}



	public void setItemNumber(Long itemNumber) {
		this.itemNumber = itemNumber;
	}



	public Long getBoardContentId() {
		return boardContentId;
	}

	public void setBoardContentId(Long boardContentId) {
		this.boardContentId = boardContentId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getInsertedDate() {
		return insertedDate;
	}

	public void setInsertedDate(Date insertedDate) {
		this.insertedDate = insertedDate;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public Board getBoard() {
		return board;
	}

	public void setBoard(Board board) {
		this.board = board;
	}
	
}
