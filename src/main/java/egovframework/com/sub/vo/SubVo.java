package egovframework.com.sub.vo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class SubVo {
	
	@NotNull
	@Size(min=1, max=30, message="userId not null")
	private String email;
	private String pw;
	private String phone_num;
	private String nickname;
	private String pwCheck;
	private String key = "daul";
	private boolean useCookie;
	
	
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPwCheck() {
		return pwCheck;
	}
	public void setPwCheck(String pwCheck) {
		this.pwCheck = pwCheck;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getPwKey() {
		return getPw() + getKey();
	}
	
	
	
}
