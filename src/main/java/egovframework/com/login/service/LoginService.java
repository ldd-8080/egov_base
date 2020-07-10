package egovframework.com.login.service;

import egovframework.com.user.vo.UserVo;

public interface LoginService {
	UserVo login(UserVo vo) throws Exception;
}
