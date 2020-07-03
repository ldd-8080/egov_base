package egovframework.com.sub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SubController {

	@RequestMapping(value = "/sub/sub.do")
	public String test() {
		return "sub/sub";
	}
}
