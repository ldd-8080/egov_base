package egovframework.com.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import egovframework.com.board.vo.BoardVo;

public interface BoardService {
	
	public List<Map<String,String>> selectBoardList() throws Exception;
	public BoardVo selectBoard(BoardVo vo) throws Exception;
	void insertBoard(BoardVo vo, MultipartFile[] file)throws Exception;
	public List<Map<String,String>> selectBoardFile(BoardVo vo) throws Exception;
}
