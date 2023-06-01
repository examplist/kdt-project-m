package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import dto.MemberDTO;
import jakarta.servlet.http.HttpSession;
import service.MemberService;

@Controller
public class MypageController {
@Autowired
MemberService service;
	
@GetMapping("mypage")
public String getSelectOne() {
	return "member/mypage";
}
@PostMapping("mypage")
public String getSelectOne(MemberDTO dto,HttpSession session) throws Exception {
	dto = service.getSelectOne(dto);
	if (dto != null) {
			session.setAttribute("sessionid", dto);
	}
	return "redirect:main";
}


}
