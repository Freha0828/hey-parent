package org.hey.service;

import java.util.List;
import org.hey.modle.User;

public interface IUserService {
	
	User findUserByPassword(String userName,String password);

	List<User> findAllAdministrators();

	List<User> findAllOperators();
}
