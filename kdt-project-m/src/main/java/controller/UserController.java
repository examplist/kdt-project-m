package controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import dto.MemberDTO;
import service.UserService;

@Controller
public class UserController {
	public static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	UserService service;
	
	@ModelAttribute
	public MemberDTO initCommand() {
		return new MemberDTO();
	}
	
	@GetMapping("resisterUser.do")
	public String form() {
		return "member/memberRegister";
	}
	@PostMapping("registerUser.do")
	public String submit(MemberDTO dto, BindingResult result, Model model) {
		
		service.insertMember(dto);
		
		model.addAttribute("accessMsg","회원가입이 완료되었습니다.");
		return "common/notice";
	}

}