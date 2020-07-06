package egovframework.com.sub.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.com.sub.vo.SubVo;

@Controller
@RequestMapping(value = "/sub")
public class SubController {

	@RequestMapping(value = "/sub.do")
	public String test(ModelMap model) {
		System.out.println("---------- SubController test() sub/sub.do ----------");
		model.addAttribute("subVo", new SubVo());
		return "sub/sub";
	}
	
	
	@RequestMapping(value = "/subs.do", method = RequestMethod.POST)
	//@ModelAttribute는 생략해도  무관하나 명시적으로 붙여는것이 좋
	public String test2(@ModelAttribute @Valid SubVo vo, BindingResult result) {
		System.out.println("---------- SubController test2() sub/subs.do ----------");
		System.out.println("vo userId : " + vo.getUserId());
		
		if (result.hasErrors()) {
			System.out.println("result Error : " + result.getFieldError().getDefaultMessage());
			return "sub/sub";
		}
		
		return "main/main";
	}
	
	
	
}
