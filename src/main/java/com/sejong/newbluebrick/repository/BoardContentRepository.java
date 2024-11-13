package com.sejong.newbluebrick.repository;

/**
 * https://docs.spring.io/spring-data/jpa/docs/current/reference/html/
 */

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sejong.newbluebrick.model.Board;
import com.sejong.newbluebrick.model.BoardContent;


@Repository
public interface BoardContentRepository extends CrudRepository<BoardContent, Integer>{
	Page<BoardContent> findByBoard(Board board, Pageable pageable);
	
	
	@Query(value="SELECT * FROM board_content WHERE board_id= ?1 AND version = ?2 AND subject IS NOT NULL AND subject <> ''", nativeQuery=true)
	Page<BoardContent> boardList(Board board, String version, Pageable pageable);
	
	
	@Query(value="SELECT * FROM board_content WHERE board_id= ?1 AND version = ?2 AND subject IS NOT NULL AND subject <> '' AND (subject LIKE %?3% OR board_content LIKE %?3%)", nativeQuery=true)
	Page<BoardContent> boardSearch(Board board, String version, String search, Pageable pageable);

	
	List<BoardContent> findByBoard(Board board);
	
	BoardContent findFirstByBoardAndVersionOrderByInsertedDateDesc(Board board, String version);
	List<BoardContent> findFirst2ByBoardAndVersionOrderByInsertedDateDesc(Board board, String version);

	
	@Query(value="SELECT ifnull(MAX(item_number), 0) + 1 FROM board_content WHERE board_id = ?1", nativeQuery=true)
	Long nextItemNumberByBaord(Board board);
	
	List<BoardContent> findByBoardAndItemNumber(Board board, Long itemNumber);
	
	BoardContent findByBoardAndItemNumberAndVersion(Board board, Long itemNumber, String version);


	Page<BoardContent> findByBoardAndVersion(Board board, String version, Pageable pageable);

}

