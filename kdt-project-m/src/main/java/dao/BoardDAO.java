package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.BoardDTO;
import dto.BoardMemberDTO;

@Mapper
@Repository
public interface BoardDAO {
	List<BoardMemberDTO> articlesAll(int startIndex);
	int countArticles();
	List<BoardMemberDTO> articlesMy(String memberid);
	BoardMemberDTO articleContent(int articleid);
	int createArticle(BoardDTO boarddto);
	int updateArticle(BoardDTO boarddto);
	int deleteArticle(BoardDTO boarddto);	
}
