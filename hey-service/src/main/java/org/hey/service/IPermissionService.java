package org.hey.service;

import org.hey.modle.PermissionModel;

import java.util.List;
import java.util.Map;

public interface IPermissionService {

    List<PermissionModel> findPermission(Map<String,Integer> map);

    int queryCountForPermission();
}
