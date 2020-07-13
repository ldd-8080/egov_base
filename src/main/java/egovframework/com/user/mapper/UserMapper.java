package egovframework.com.user.mapper;

import egovframework.com.user.vo.UserVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("userMapper")
public interface UserMapper {
	void userUpdate(UserVo vo) throws Exception;

	void createUser(UserVo vo) throws Exception;
}
