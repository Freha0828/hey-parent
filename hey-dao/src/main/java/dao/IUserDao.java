package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hey.modle.User;
import org.hey.modle.UserInfo;

public interface IUserDao {

	List<User> findUserByPassword(@Param("userName")String userName,@Param("password")String password);

	List<User> findAllAdministrators();

	List<User> findAllOperators();
}
