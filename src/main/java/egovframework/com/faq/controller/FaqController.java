package egovframework.com.faq.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.com.cmmn.interceptor.cmmnInterceptor;
import egovframework.com.faq.service.FaqService;
import egovframework.com.faq.vo.FaqVo;

@Controller
@RequestMapping(value="/faq")
public class FaqController {
	protected Log log = LogFactory.getLog(cmmnInterceptor.class);
	
	@Resource(name = "faqService")
	private FaqService faqService;
	
	@RequestMapping(value="/faqList.do", method = RequestMethod.GET)
	public String faqlist(ModelMap model) throws Exception{
		
		try{
			List<Map<String, String>> faqList = faqService.selectFaqList();
			model.addAttribute("faqList",faqList);
		}catch(Exception e){
			log.debug("FaqController > /faqList.do > Exception");
		}
		
		return "faq/faqList";
	}

	@RequestMapping(value = "/faqWrite.do", method = RequestMethod.GET)
	public String faqWrite(ModelMap model) throws Exception {
		model.addAttribute("faqVo", new FaqVo());
		return "faq/faqWrite";
	}
	
}
