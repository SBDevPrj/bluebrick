package com.sejong.newbluebrick.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "board")
public class Board {
	
	public Board() {

	}
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="board_id")
    private Long boardId;
	
	@OneToMany(mappedBy = "board", targetEntity=BoardContent.class, cascade=CascadeType.PERSIST)
	private List<BoardContent> boardContent = new ArrayList<BoardContent>();
	
	@Column(name="board_name", unique=true, nullable=false)
    private String boardName;
        
	
	public Board(String boardName) {
		this.boardName = boardName;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public List<BoardContent> getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(List<BoardContent> boardContent) {
		this.boardContent = boardContent;
	}
	

    
}
