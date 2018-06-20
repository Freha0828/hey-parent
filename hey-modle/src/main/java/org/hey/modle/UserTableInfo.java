package org.hey.modle;

import java.util.List;

/**
 * 
 * @ClassName: UserTableInfo
 * @Description: TODO
 * @author Comsys-liuhb
 * @date 2018年5月29日 下午9:21:37
 *
 */
public class UserTableInfo{

	//包含表头信息 和 该表头对应的余额
	private List<QuarterInfo> quarterInfo;
	//四个季度的合计结息额信息
	private double sumBalance;
	//用户信息
	private UserInfo userInfo;
	
	
	
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	
	public List<QuarterInfo> getQuarterInfo() {
		return quarterInfo;
	}
	public void setQuarterInfo(List<QuarterInfo> quarterInfo) {
		this.quarterInfo = quarterInfo;
	}
	public double getSumBalance() {
		return sumBalance;
	}
	public void setSumBalance(double sumBalance) {
		this.sumBalance = sumBalance;
	}
	





}
