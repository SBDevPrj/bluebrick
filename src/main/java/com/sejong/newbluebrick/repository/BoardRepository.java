package com.sejong.newbluebrick.repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sejong.newbluebrick.model.Board;


@Repository
public interface BoardRepository extends CrudRepository<Board, Integer>{

	Board findByBoardName(String boardName);
	
}
