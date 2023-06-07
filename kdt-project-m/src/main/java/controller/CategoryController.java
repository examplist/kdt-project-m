package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.ProductDTO;
import dto.PurchaseDTO;
import jakarta.servlet.http.HttpSession;
import service.CategoryService;
import service.PurchaseService;

@Controller
public class CategoryController {
	@Autowired
	CategoryService service;
	@Autowired
	PurchaseService service2;
	
	@GetMapping("/category")
	public ModelAndView categorylist(String category) {
		List<ProductDTO> list = service.categoryList(category);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("categoryList", list);
		mv.setViewName("/category/category");
		return mv;
	}
	@GetMapping("/productDetail")
	public ModelAndView productdetail(int id) {
		ProductDTO dto = service.productDetail(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("productDetail", dto);
		mv.setViewName("/category/product");
		return mv;
	}
	@GetMapping("/purchaseok")
	public String start() {
		return "/purchase/purchaseok";
	}
	@GetMapping("/purchaseList")
	public ModelAndView purchaseList(String buyer , HttpSession session) {
		buyer = String.valueOf(session.getAttribute("sessionmemberid"));
		List<PurchaseDTO> list2 = service2.purchaseList(buyer);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("purchaseList", list2);
		mv.setViewName("/purchase/purchaseList");
		return mv;
	}
	@GetMapping("/gocart")
	public ModelAndView gocart(String buyer , HttpSession session) {
		buyer = String.valueOf(session.getAttribute("sessionmemberid"));
		List<PurchaseDTO> list3 = service2.purchaseList(buyer);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("goCart", list3);
		mv.setViewName("/cart/gocart");
		return mv;
	}
}
