package egovframework.com.user.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.com.user.service.UserService;
import egovframework.com.user.vo.UserVo;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Resource(name = "userService")
	private UserService userService;
	
	@RequestMapping(value="/update.do", method = RequestMethod.POST)
	public String userUpdate(@ModelAttribute @Valid UserVo vo, BindingResult result) throws Exception {
		userService.userUpdate(vo);
		return "main/main";
	}
}
