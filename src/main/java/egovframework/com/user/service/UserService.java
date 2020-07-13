package egovframework.com.user.service;

import egovframework.com.user.vo.UserVo;


public interface UserService {
	void userUpdate(UserVo vo) throws Exception;

	void createUser(UserVo vo) throws Exception;
}
