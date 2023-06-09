package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import dto.CategoryDTO;
import dto.ProductDTO;
import service.HomeService;

@Controller
public class HomeController {
	@Autowired
	HomeService service;

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		String[] categories = CategoryDTO.CATEGORIES;
		int limit = CategoryDTO.HIGH_RANKED_LIMIT;
		HashMap<String, List<ProductDTO>> highRankedProducts = new HashMap<>();
		for (String category : categories) {
			List<ProductDTO> highRankedProductsByCategory = service.highRanked(category, limit);
			highRankedProducts.put(category, highRankedProductsByCategory);
		}
		mv.addObject("highRankedProducts", highRankedProducts);
		mv.setViewName("home/frame");
		return mv;
	}
}
