package org.hey.service;

import org.hey.modle.UserInfo;
import org.hey.modle.UserTableInfo;

import java.util.List;

public interface ICustomerService {
	
	//根据账号查询客户信息
	UserTableInfo  queryCustomerInfoByAccount(String account);
	//根据季度查询该季度数据是否已经导入
	boolean queryQuerter(String quarter);
	//插入用户该季度的数据
	int insertCustomerFile(List<UserInfo> userInfos);
}
