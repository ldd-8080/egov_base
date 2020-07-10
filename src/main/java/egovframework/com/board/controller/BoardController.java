package egovframework.com.board.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.com.board.service.BoardService;
import egovframework.com.cmmn.interceptor.cmmnInterceptor;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	protected Log log = LogFactory.getLog(cmmnInterceptor.class);
	
	@Resource(name = "boardService")
	private BoardService boardService;
	
	@RequestMapping(value="/boardList.do", method = RequestMethod.GET)
	public String boardList(ModelMap model) throws Exception{
		
		try {
			List<Map<String, String>> boardList = boardService.selectBoardList();
			model.addAttribute("resultList",boardList);
		}catch(Exception e){
			log.debug("BoardController > /boardList.do > Exception");
		}
		return "board/boardList";
	}
}
