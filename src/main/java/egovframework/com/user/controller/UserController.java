package egovframework.com.user.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.com.cmmn.SecurityUtil;
import egovframework.com.user.service.UserService;
import egovframework.com.user.vo.UserVo;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	protected Log log = LogFactory.getLog(UserController.class);
	
	@Resource(name = "userService")
	private UserService userService;
	
	@RequestMapping(value="/update.do", method = RequestMethod.POST)
	public String userUpdate(@ModelAttribute @Valid UserVo vo, BindingResult result) throws Exception {
		userService.userUpdate(vo);
		return "main/main";
	}
	
	@RequestMapping(value="/signUpPage.do")
	public String userSignUpPage(ModelMap model) {
		model.addAttribute("userVo", new UserVo());
		
		return "user/signUp";
	}
	
	@RequestMapping(value="/signUp.do", method=RequestMethod.POST)
	public String userSignUp(@Valid UserVo vo, BindingResult result) throws Exception {
		System.out.println(vo);
		if (result.hasErrors()) {
			log.debug("userSignUp Valid Error : " + result.getFieldError().getDefaultMessage());
			return "user/signUp";
		}
		
		SecurityUtil securityUtil = new SecurityUtil();
		String EncryptPw = securityUtil.encryptSHA256(vo.getPwKey());
		vo.setPw(EncryptPw);
		
		userService.createUser(vo);
		
		return "redirect:/main/main.do";
	}
}
