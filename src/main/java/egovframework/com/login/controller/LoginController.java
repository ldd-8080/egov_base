package egovframework.com.login.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmmn.SecurityUtil;
import egovframework.com.login.service.LoginService;
import egovframework.com.user.vo.UserVo;

@Controller
@RequestMapping(value="/login")
public class LoginController {
	
	protected Log log = LogFactory.getLog(LoginController.class);

	@Resource(name="loginService")
	private LoginService loginService;
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity login(@ModelAttribute @Valid UserVo vo, BindingResult result, ModelMap model) throws Exception {
		if (result.hasErrors()) {
			log.debug("Valid Error : " + result.getFieldError().getDefaultMessage());
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(result.getAllErrors());
		} else {
			UserVo userVo = loginService.login(vo);
			
			SecurityUtil securityUtil = new SecurityUtil();
			String encryptPw = securityUtil.encryptSHA256(vo.getPwKey());
			
			if (userVo == null) {
				return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(null);
			} else {
				if (encryptPw.equals(userVo.getPw())) {
					model.addAttribute("user", userVo);
					
					return ResponseEntity.status(HttpStatus.OK).body(userVo);
				} else {
					return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(null);
				}
			}
		}
	}
}
