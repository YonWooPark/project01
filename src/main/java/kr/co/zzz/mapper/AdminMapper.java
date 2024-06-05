package kr.co.zzz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.zzz.dto.AdminDto;

@Mapper
public interface AdminMapper {
	
	int adminInsert(@Param("adminDto")AdminDto adminDto);

	AdminDto loginConfirm(@Param("adminDto") AdminDto adminDto);

	List<AdminDto> adminList();

	int updateAdminAccount(String id);

	void update(@Param("adminDto")AdminDto adminDto);

	int modifyAccountConfirm(@Param("adminDto")AdminDto adminDto);

	List<AdminDto> search(@Param("keyword")String keyword);

}
