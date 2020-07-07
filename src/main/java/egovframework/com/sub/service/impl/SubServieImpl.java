package egovframework.com.sub.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.sub.mapper.SubMapper;
import egovframework.com.sub.service.SubService;
import egovframework.com.sub.vo.SubVo;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("subService")
public class SubServieImpl extends EgovAbstractServiceImpl implements SubService{

	@Resource(name = "subMapper")
	private SubMapper subMapper;
	
	@Override
	public SubVo login(SubVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		
		return subMapper.selectLoginCheck(vo);
	}

}
