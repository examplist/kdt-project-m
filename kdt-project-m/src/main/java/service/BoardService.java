package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDAO;
import dto.BoardDTO;
import dto.BoardMemberDTO;

@Service
public class BoardService {
	@Autowired
	BoardDAO boarddao;
	
	int articlePerPage = 4;
	
	public List<BoardMemberDTO> renderAll(int page) {
		int startIndex = ((page - 1) * articlePerPage);
		List<BoardMemberDTO> dtosBeforeDateProcessing = boarddao.articlesAll(startIndex);
		List<BoardMemberDTO> dtosAfterDateProcessing = new ArrayList<>();
		for (BoardMemberDTO dtoBefore : dtosBeforeDateProcessing) {
			String[] dateAndTimeSplitted = dtoBefore.getWritedate().split(" ");
			dtoBefore.setWritedate(dateAndTimeSplitted[0]);
			dtosAfterDateProcessing.add(dtoBefore);
		}
		return dtosAfterDateProcessing;
	}
	
	public int countPages() {
		int countArticles = boarddao.countArticles();
		int countPages = (countArticles % articlePerPage == 0) ? (countArticles / articlePerPage) : (countArticles / articlePerPage) + 1;
		return countPages;
	}
	
	public List<BoardMemberDTO> renderMy(String memberid) {
		List<BoardMemberDTO> dtosBeforeDateProcessing = boarddao.articlesMy(memberid);
		List<BoardMemberDTO> dtosAfterDateProcessing = new ArrayList<>();
		for (BoardMemberDTO dtoBefore : dtosBeforeDateProcessing) {
			String[] dateAndTimeSplitted = dtoBefore.getWritedate().split(" ");
			dtoBefore.setWritedate(dateAndTimeSplitted[0]);
			dtosAfterDateProcessing.add(dtoBefore);
		}
		return dtosAfterDateProcessing;		
	}
	
	public BoardMemberDTO renderArticleContent(int id) {
		return boarddao.articleContent(id);
	}
	
	public int createArticle(BoardDTO dto) {
		return boarddao.createArticle(dto);
	}
	
	public int updateArticle(BoardDTO dto) {
		return boarddao.updateArticle(dto);
	}
	
	public int deleteArticle(BoardDTO dto) {
		return boarddao.deleteArticle(dto);
	}
}
