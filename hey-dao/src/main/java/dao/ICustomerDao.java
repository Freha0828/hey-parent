package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.hey.modle.UserInfo;

public interface ICustomerDao {
	List<UserInfo>  queryCustomerInfoByAccount(String account);

	//int insertCustomerFile(@Param("list") List<UserInfo> list);

	int insertCustomerFile(@Param("list")List<UserInfo> list );

	UserInfo queryQuarter(String quarter);
}
