package org.hey.service;

import org.hey.modle.RoleModel;

import java.util.List;
import java.util.Map;

public interface IRoleService {

    List<RoleModel> findRole(Map<String,Integer> map);

    int queryCountForRole();
}
