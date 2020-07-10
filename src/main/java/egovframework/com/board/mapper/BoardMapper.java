package egovframework.com.board.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("boardMapper")
public interface BoardMapper {
	
	List<Map<String,String>> selectBoardList();
}
