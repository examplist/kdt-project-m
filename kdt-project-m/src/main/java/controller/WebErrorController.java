package controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;

//@Controller
//public class WebErrorController implements ErrorController {
//	@RequestMapping("/error")
//	public ModelAndView handleError(HttpServletRequest request) {
//		ModelAndView mv = new ModelAndView();
//		String stringStatusCode = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE).toString();
//		int intStatusCode = Integer.parseInt(stringStatusCode);
//		mv.addObject("errorCode", intStatusCode);
//		mv.setViewName("errorpage");
//		return mv;
//	}
//}
