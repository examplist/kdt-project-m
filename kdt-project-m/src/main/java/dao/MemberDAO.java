package dao;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.MemberDTO;

@Mapper
@Repository
public interface MemberDAO {
	
	public MemberDTO getSelectOne(MemberDTO dto) throws Exception;

}




