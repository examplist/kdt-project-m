package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.ProductDTO;

@Mapper
@Repository
public interface ProductDAO {
	List<ProductDTO> highRanked(HashMap map);
}
