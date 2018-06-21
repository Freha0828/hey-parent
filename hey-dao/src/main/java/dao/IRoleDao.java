package dao;

import org.hey.modle.RoleModel;

import java.util.List;
import java.util.Map;

public interface IRoleDao {

    List<RoleModel> findRole(Map<String,Integer> map);

    int queryCountForRole();
}
