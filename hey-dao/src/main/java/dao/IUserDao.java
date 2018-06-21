package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.hey.modle.User;
import org.hey.modle.UserInfo;

public interface IUserDao {

	List<User> findUserByPassword(@Param("userName")String userName,@Param("password")String password);

	List<User> findAllAdministrators(Map<String,Integer> map);

	int queryCount();

	List<User> findAllOperators(Map<String,Integer> map);

	int queryCountForOperator();
}
