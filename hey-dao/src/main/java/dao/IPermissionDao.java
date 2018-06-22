package dao;

import org.hey.modle.PermissionModel;

import java.util.List;
import java.util.Map;

public interface IPermissionDao {

    List<PermissionModel> findPermission(Map<String,Integer> map);

    int queryCountForPermission();
}
