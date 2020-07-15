package egovframework.com.faq.service;

import java.util.List;
import java.util.Map;

public interface FaqService {
	
	public List<Map<String,String>> selectFaqList() throws Exception;
}
