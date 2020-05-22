package kr.koreait.vo;

import java.util.ArrayList;

public class LoginList {
	
	private ArrayList<LoginVO> loginList = new ArrayList<LoginVO>();
	
	public LoginList() {}
	
	public ArrayList<LoginVO> getLoginList() {
		return loginList;
	}
	public void setLoginList(ArrayList<LoginVO> loginList) {
		this.loginList = loginList;
	}

	@Override
	public String toString() {
		return "LoginList [loginList=" + loginList + "]";
	}
	
}
