package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.BoardDTO;
import dto.BoardMemberDTO;
import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@GetMapping("/board/all")
	public ModelAndView boardAll(HttpServletRequest req) {
		String pageStr = req.getParameter("page");
		int page = Integer.parseInt(pageStr);
		ModelAndView mv = new ModelAndView();
		List<BoardMemberDTO> articles = service.renderAll(page);
		int countPages = service.countPages();
		mv.addObject("writerTarget", "all");
		mv.addObject("articles", articles);
		mv.addObject("countPages", countPages);
		mv.setViewName("board/list");
		return mv;
	}
	
	@GetMapping("/board/my")
	public ModelAndView boardMy(HttpSession session) {
		String memberid = "";
		MemberDTO memberdto = (MemberDTO) session.getAttribute("sessionid");
		if (memberdto != null) {
			memberid = memberdto.getMemberid();	
		}
		ModelAndView mv = new ModelAndView();
		List<BoardMemberDTO> articles = service.renderMy(memberid);
		mv.addObject("writerTarget", "my");
		mv.addObject("articles", articles);		
		mv.setViewName("board/list");
		return mv;
	}
	
	@GetMapping("/article")
	public ModelAndView article(HttpServletRequest req) {
		String articleidStr = req.getParameter("id");
		int articleid = Integer.parseInt(articleidStr);
		ModelAndView mv = new ModelAndView();
		BoardMemberDTO articleData = service.renderArticleContent(articleid);		
		mv.addObject("articleData", articleData);
		mv.setViewName("board/read");
		return mv;
	}
	
	@GetMapping("/article-create")
	public String articleCreatePage() {
		return "board/create";
	}
	
	@PostMapping("/article-create")
	public ModelAndView articleCreateProceed(BoardDTO dto) {
		ModelAndView mv = new ModelAndView();
		service.createArticle(dto);
		mv.addObject("message", "정상적으로 처리되었습니다.");
		mv.setViewName("board/message");
		return mv;
	}
	
	@GetMapping("/article-update")
	public ModelAndView articleUpdatePage(HttpServletRequest req) {
		String articleidStr = req.getParameter("id");
		int articleid = Integer.parseInt(articleidStr);
		BoardMemberDTO articleData = service.renderArticleContent(articleid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("articleData", articleData);
		mv.setViewName("board/update");
		return mv;
	}
	
	@PostMapping("/article-update")
	public ModelAndView articleUpdateProceed(BoardDTO dto) {
		ModelAndView mv = new ModelAndView();
		service.updateArticle(dto);
		mv.addObject("message", "정상적으로 수정되었습니다.");
		mv.setViewName("board/message");
		return mv;
	}
	
	@PostMapping("/article-delete")
	public ModelAndView articleDeleteProceed(BoardDTO dto) {
		ModelAndView mv = new ModelAndView();
		service.deleteArticle(dto);
		mv.addObject("message", "정상적으로 삭제되었습니다.");
		mv.setViewName("board/message");		
		return mv;
	}
}
