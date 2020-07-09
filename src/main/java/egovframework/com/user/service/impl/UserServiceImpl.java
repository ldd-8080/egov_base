package egovframework.com.user.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.user.mapper.UserMapper;
import egovframework.com.user.service.UserService;
import egovframework.com.user.vo.UserVo;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("userService")
public class UserServiceImpl  extends EgovAbstractServiceImpl implements UserService{

	@Resource(name = "userMapper")
	private UserMapper userMapper;
	
	@Override
	public void userUpdate(UserVo vo) throws Exception {
		userMapper.userUpdate(vo);
		
	}

}
