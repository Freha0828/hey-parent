package org.hey.service;

import java.util.List;
import java.util.Map;

import org.hey.modle.User;


public interface IUserService {
	
	User findUserByPassword(String userName,String password);

	List<User> findAllAdministrators(Map<String, Integer> map);

	int queryCount();

	List<User> findAllOperators(Map<String, Integer> map);

	int queryCountForOperator();
}
