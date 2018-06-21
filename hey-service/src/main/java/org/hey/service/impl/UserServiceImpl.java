package org.hey.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hey.modle.User;
import org.hey.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IUserDao;

@Service
public class UserServiceImpl implements IUserService{

    @Autowired
    private IUserDao userDao;

    //@Override
    public User findUserByPassword(String userName, String password) {
        List<User> user = userDao.findUserByPassword(userName, password);
        if (user != null && user.size() >0) {
            return user.get(0);
        }
        return null;
    }


    public List<User> findAllAdministrators(Map<String, Integer> map) {
        List<User> administratorsUser = userDao.findAllAdministrators(map);
        if (administratorsUser != null && administratorsUser.size() > 0){
            return administratorsUser;
        }
        return null;

    }

    public int queryCount(){
        return userDao.queryCount();
    }

    public List<User> findAllOperators(Map<String, Integer> map) {
        List<User> operatorsUser = userDao.findAllOperators(map);
        if (operatorsUser != null && operatorsUser.size() > 0){
            return operatorsUser;
        }
        return null;
    }

    public int queryCountForOperator() {
        return userDao.queryCountForOperator();
    }

}
