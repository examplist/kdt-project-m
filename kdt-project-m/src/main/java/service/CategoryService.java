package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ProductDAO;
import dto.ProductDTO;

@Service
public class CategoryService {
	
	@Autowired
	ProductDAO productdao;
	
	public List<ProductDTO> categoryList(String category){
		return productdao.categoryList(category);
	}
	public ProductDTO productDetail(int id) {
		return productdao.productDetail(id);
	}
}
