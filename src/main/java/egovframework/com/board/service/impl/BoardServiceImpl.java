package egovframework.com.board.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import egovframework.com.board.mapper.BoardMapper;
import egovframework.com.board.service.BoardService;
import egovframework.com.board.vo.BoardVo;
import egovframework.com.cmmn.util.FileUtils;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("boardService")
public class BoardServiceImpl extends EgovAbstractServiceImpl implements BoardService {
	
	@Resource(name="boardMapper")
	private BoardMapper boardMapper;
	
	@Override
	public List<Map<String,String>> selectBoardList() throws Exception{
		List<Map<String,String>> list = new ArrayList();
		
		list = boardMapper.selectBoardList();
		
		return list;
		
	}
	
	@Override
	public List<Map<String,String>> selectBoardFile(BoardVo vo) throws Exception{
		List<Map<String,String>> list = new ArrayList();
		
		list = boardMapper.selectBoardFile(vo);
		
		return list;
		
	}
	

	@Override
	public BoardVo selectBoard(BoardVo vo) throws Exception{
		return boardMapper.selectBoard(vo);
	}
	
	@Override
	public void insertBoard(BoardVo vo, MultipartFile[] file) throws Exception{
		System.out.println("insertBoard - 1");
		vo.setBoard_idx(boardMapper.selectBoardIdx());
		System.out.println("insertBoard - 2");
		boardMapper.insertBoard(vo);
		System.out.println("insertBoard - 3");
		FileUtils fileUtils = new FileUtils();
		List<Map<String, Object>> fileList = fileUtils.parseFileInfo(vo, file);
		for(int i = 0; i<fileList.size(); i++) {
			boardMapper.insertFile(fileList.get(i));
		}
		
	}
}
























