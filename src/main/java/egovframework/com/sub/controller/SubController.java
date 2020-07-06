package egovframework.com.sub.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.com.sub.vo.SubVo;

@Controller
@RequestMapping(value = "/sub")
public class SubController {

	@RequestMapping(value = "/sub.do")
	public String test() {
		System.out.println("링크타고들");
		return "sub/sub";
	}
	
	
	@RequestMapping(value = "/subs.do", method = RequestMethod.POST)
	public String test2(@ModelAttribute("user") SubVo vo) {
		System.out.println("post전송");
		System.out.println("111"+vo.getUserId());
		vo.setUserId("1234aaa");
	     

		return "sub/sub";
	}
	
	
	
}
