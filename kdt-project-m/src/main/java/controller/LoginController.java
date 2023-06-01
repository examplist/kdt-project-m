package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dto.MemberDTO;
import jakarta.servlet.http.HttpSession;
import service.MemberService;

@Controller

public class LoginController {
	@Autowired
	MemberService service;

	@GetMapping("login")
	public String getSelectOne() {
		return "member/login";
	}

	@PostMapping("login")
	public String getSelectOne(MemberDTO dto, String memberid, String memberpw, HttpSession session) throws Exception {
		dto = service.getSelectOne(dto);
		if (dto != null) {
				session.setAttribute("sessionid", dto);
		}
		return "redirect:/";
	}

	@GetMapping("logout")
	public String logout() {
		return "member/logout";
	}

	@PostMapping("logout")
	public String logout(MemberDTO memberdto, HttpSession session) throws Exception {
		return "member/logout";
	}
}