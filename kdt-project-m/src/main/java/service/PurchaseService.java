package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PurchaseDAO;
import dto.PurchaseDTO;

@Service
public class PurchaseService {
	
	@Autowired
	PurchaseDAO purchasedao;
	public List<PurchaseDTO> purchaseList(String buyer) {
		return purchasedao.purchaseList(buyer);
	}
}
