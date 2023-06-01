package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ProductDAO;
import dto.ProductDTO;

@Service
public class HomeService {
	@Autowired
	ProductDAO productdao;
	
	public List<ProductDTO> highRanked(String category, int limit) {
		HashMap params = new HashMap();
		params.put("category", category);
		params.put("limit", limit);
		return productdao.highRanked(params);
	}
}
