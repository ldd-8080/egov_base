package egovframework.com.login.mapper;

import egovframework.com.user.vo.UserVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("loginMapper")
public interface LoginMapper {
	UserVo selectLoginCheck(UserVo vo) throws Exception;
}
