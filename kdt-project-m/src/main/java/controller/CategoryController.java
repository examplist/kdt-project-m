package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.ProductDTO;
import service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	CategoryService service;
	
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
	
}
