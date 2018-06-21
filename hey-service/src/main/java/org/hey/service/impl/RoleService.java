package org.hey.service.impl;

import dao.IRoleDao;
import org.hey.modle.RoleModel;
import org.hey.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class RoleService implements IRoleService {

    @Autowired
    private IRoleDao roleDao;

    public List<RoleModel> findRole(Map<String, Integer> map) {
        List<RoleModel> roles = roleDao.findRole(map);
        if (roles != null && roles.size() > 0){
            return roles;
        }
        return null;
    }

    public int queryCountForRole() {
        return roleDao.queryCountForRole();
    }
}
