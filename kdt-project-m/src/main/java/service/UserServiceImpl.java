package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UserDAO;
import dto.MemberDTO;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO dao;

	@Override
	public void insertMember(MemberDTO dto) {
		dao.insertMember(dto);
	}

}
