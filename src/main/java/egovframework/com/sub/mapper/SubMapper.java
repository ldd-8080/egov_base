package egovframework.com.sub.mapper;

import egovframework.com.sub.vo.SubVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("subMapper")
public interface SubMapper {
	SubVo selectLoginCheck(SubVo vo) throws Exception;
}