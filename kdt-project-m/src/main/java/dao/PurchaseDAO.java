package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.PurchaseDTO;

@Mapper
@Repository
public interface PurchaseDAO {
	PurchaseDTO purchaseCreate(PurchaseDTO dto) ;
	List<PurchaseDTO> purchaseList(String buyer);
}
