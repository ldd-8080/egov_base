package egovframework.com.board.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
	
	public List<Map<String,String>> selectBoardList() throws Exception;
}
