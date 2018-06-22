package controller;

import org.hey.modle.User;
import org.hey.service.IUserService;
import org.hey.service.util.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import util.CommonUntl;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/")
public class OperatorController {

    @Autowired
    public IUserService userService;

    @RequestMapping(value = "/addOperator")
    @ResponseBody
    public Object addOperator(String username, String phone, String email){
        User user =  BeanFactory.createBean(User.class);;
        user.setUserName(username);
        user.setRoleId(2);
        user.setPhoneNum(phone);
        user.setEmail(email);
        user.setPassword("123456");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        user.setCreateTime(df.format(new Date()));
        user.setUpdateTime(df.format(new Date()));
        user.setUpdateUser("admin");

        //userService.addOperator(user);

        return CommonUntl.getResponseData("0","OK","0",user);
    }


    @RequestMapping(value = "/addOperatorTest")
    @ResponseBody
    public Object addOperatorTest(User data){
        User user =  BeanFactory.createBean(User.class);;
        user.setUserName("");
        user.setRoleId(2);
        user.setPhoneNum("");
        user.setEmail("");
        user.setPassword("123456");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        user.setCreateTime(df.format(new Date()));
        user.setUpdateTime(df.format(new Date()));
        user.setUpdateUser("admin");

        //userService.addOperator(user);

        return CommonUntl.getResponseData("0","OK","0",user);
    }
}
