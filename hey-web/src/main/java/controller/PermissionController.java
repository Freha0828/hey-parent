package controller;

import org.hey.modle.PermissionModel;
import org.hey.modle.RoleModel;
import org.hey.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import util.CommonUntl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/permission")
public class PermissionController {

    @Autowired
    private IPermissionService permissionService;

    @RequestMapping(value = "/getPermissions")
    @ResponseBody
    public Object getRoles(int page, int limit){
        page = (page - 1) * limit;
        Map<String, Integer> map = new HashMap<>();
        map.put("page", page);//从第几页开始
        map.put("limit", limit);//每页显示多少条记录
        List<PermissionModel> roles = permissionService.findPermission(map);
        String count = permissionService.queryCountForPermission() + "";
        return CommonUntl.getResponseData("0","请求成功",count,roles);
    }
}
