package egovframework.com.main.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.main.service.MainService;

@Controller
@RequestMapping(value = "/main")
public class MainController {

	@Resource(name = "mainService")
	private MainService mainService;
	
	@RequestMapping(value = "/main.do")
	public String home(ModelMap model) throws Exception{
		System.out.println("main controller");
		
		try {
//			for (int i = 0; i < 5; i++) {
//				Map<String, String> dummy = new HashMap();
//				
//				dummy.put("name", "name " + i);
//				dummy.put("position", "position " + i);
//				dummy.put("office", "office " + i);
//				dummy.put("age", "age " + i);
//				dummy.put("startDate", "startDate " + i);
//				dummy.put("salary", "salary " + i);
//				
//				list.add(dummy);
//			}
//			System.out.println(list);
			
			List<Map<String, String>> dummyList = mainService.selectDummyList();
			System.out.println("dummyList >>> " + dummyList);
			
			model.addAttribute("resultList", dummyList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "main/main";
	}
}
