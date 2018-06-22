package controller;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import org.hey.modle.User;
import org.hey.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hey.modle.ResponseData;
import util.CommonUntl;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    public IUserService userService;

    @RequestMapping(value = "/getAllAdmin")
    @ResponseBody
    public Object getAllAdministrators(int page, int limit) {
        page = (page - 1) * limit;
        Map<String, Integer> map = new HashMap<>();
        map.put("page", page);//从第几页开始
        map.put("limit", limit);//每页显示多少条记录
        List<User> adminUser = userService.findAllAdministrators(map);
        String count = userService.queryCount() + "";
        return CommonUntl.getResponseData("0","请求成功",count,adminUser);
    }

    @RequestMapping(value = "/getAllOperators")
    @ResponseBody
    public Object getAllOperators(int page, int limit){
        page = (page - 1) * limit;
        Map<String, Integer> map = new HashMap<>();
        map.put("page", page);//从第几页开始
        map.put("limit", limit);//每页显示多少条记录
        List<User> operatorsUser = userService.findAllOperators(map);
        String count = userService.queryCountForOperator() + "";
        return CommonUntl.getResponseData("0","请求成功",count,operatorsUser);
    }




}
