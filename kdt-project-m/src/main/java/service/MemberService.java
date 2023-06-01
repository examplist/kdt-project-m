package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDAO;
import dto.MemberDTO;

@Service
public class MemberService {
	@Autowired
	MemberDAO dao;

	public MemberDTO getSelectOne(MemberDTO dto) throws Exception {
		return dao.getSelectOne(dto);
	}
}
