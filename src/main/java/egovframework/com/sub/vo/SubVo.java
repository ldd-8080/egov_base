package egovframework.com.sub.vo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class SubVo {
	
	@NotNull
	@Size(min=1, max=10, message="userId not null")
	private String userId;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
