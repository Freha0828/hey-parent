package controller;

import org.hey.modle.User;
import org.hey.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    public IUserService userService;

    @RequestMapping(value = "/getAllAdmin")
    @ResponseBody
    public List<User> getAllAdministrators(){
        List<User> adminUser = userService.findAllAdministrators();
        if (adminUser != null && adminUser.size() > 0){
            return adminUser;
        }
        return null;
    }


    @RequestMapping(value = "/getAllOperators")
    @ResponseBody
    public List<User> getAllOperators(){
        List<User> operatorsUser = userService.findAllOperators();
        if (operatorsUser != null && operatorsUser.size() > 0){
            return operatorsUser;
        }
        return null;
    }

}
