package org.hey.service.impl;

import dao.IPermissionDao;
import org.hey.modle.PermissionModel;
import org.hey.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class PermissionService implements IPermissionService {

    @Autowired
    private IPermissionDao permissionDao;

    public List<PermissionModel> findPermission(Map<String, Integer> map) {
        List<PermissionModel> permissions = permissionDao.findPermission(map);
        if (permissions != null && permissions.size() > 0){
            return permissions;
        }
        return null;
    }

    public int queryCountForPermission() {
        return permissionDao.queryCountForPermission();
    }
}
