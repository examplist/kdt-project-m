package dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.MemberDTO;
@Mapper
@Repository
public interface UserDAO {
	public String selectMemberid();
	public void insertMember(MemberDTO dto);
}
