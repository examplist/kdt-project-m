package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.MemberDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import service.MemberService;

@Controller

public class LoginController {
	@Autowired
	MemberService service;

	@GetMapping("login")
	public String getSelectOne(HttpSession session) {
		session.setAttribute("failed", false);
		return "member/login";
	}

	@PostMapping("login")
	public String getSelectOne(MemberDTO dto, String memberid, HttpSession session) throws Exception {
		dto = service.getSelectOne(dto);
		if (dto != null) {
			session.setAttribute("sessionid", dto);
			session.setAttribute("failed", false);
			session.setAttribute("sessionmemberid", memberid);
			return "redirect:/";
		} else {
			session.setAttribute("failed", true);
			return "member/login";
		}
	}

	@GetMapping("logout")
	public String logout() {
		return "member/logout";
	}

	@PostMapping("logout")
	public String logout(MemberDTO memberdto, HttpSession session) throws Exception {
		return "member/logout";
	}

	@GetMapping("mypage")
	public String SelectUserOne(HttpSession session) {
		return "member/mypage";
	}

	@PostMapping("mypage")
	public String SelectUserOne(MemberDTO dto, HttpSession session) throws Exception {
		dto = service.getSelectOne(dto);
		session.setAttribute("sessionid", dto);
		return "member/mypage";
	}


	@RequestMapping("update")
	public String updateMember(MemberDTO dto, HttpSession session) {
//		int user = Integer.parseInt(String.valueOf(session.getAttribute("dto")));
		service.updateMember(dto);
//		dto.setSeq(user);
//		session.setAttribute("dto", user);
		return "redirect:mypage";

	}

}