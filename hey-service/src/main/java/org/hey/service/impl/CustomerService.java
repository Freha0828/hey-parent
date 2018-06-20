package org.hey.service.impl;

import java.util.ArrayList;
import java.util.List;

import dao.IUserDao;
import org.hey.modle.QuarterInfo;
import org.hey.modle.UserInfo;
import org.hey.modle.UserTableInfo;
import org.hey.service.ICustomerService;
import org.hey.service.util.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ICustomerDao;

@Service
public class CustomerService implements ICustomerService{

    @Autowired
    public ICustomerDao customerDao;
    public IUserDao userDao;
    //@Override
    public UserTableInfo queryCustomerInfoByAccount(String account) {
        //前端展示数据
        UserTableInfo userTableInfo = BeanFactory.createBean(UserTableInfo.class);
        List<QuarterInfo> quarterInfos = new ArrayList<QuarterInfo>();
        //结息额总和
        double sumBalance = 0d;
        //根据账号查询四个季度的用户信息
        List<UserInfo> userInfoList = customerDao.queryCustomerInfoByAccount(account);
        for (UserInfo userInfo : userInfoList) {
            QuarterInfo quarterInfo = BeanFactory.createBean(QuarterInfo.class);
            //判断结息额是否符合规范,例如导入.49其实是相当于0.49
            String interestBalance = userInfo.getInterestBalance();
            if (interestBalance.startsWith(".")) {
                interestBalance = 0+userInfo.getInterestBalance();
            }
            //计算4个季度的结息额总和，暂时不在数据库统计
            sumBalance = sumBalance + Double.parseDouble(interestBalance);
            //将类似201801转化成2018第一季度
            quarterInfo.setQuarter(decorateQuarter(userInfo.getQuarter()));
            quarterInfo.setQuarterBalance(userInfo.getInterestBalance());
            quarterInfos.add(quarterInfo);
            quarterInfo = null;
        }
        //将获得信息 放入userTableInfo 用于前端展示
        if (userInfoList.size() > 0) {
            //因为四个季度的用户信息 用户姓名 、卡号、 账号都是一样的，将任意一条信息放入都可以
            userTableInfo.setUserInfo(userInfoList.get(0));
        }
        userTableInfo.setSumBalance(sumBalance);
        userTableInfo.setQuarterInfo(quarterInfos);
        return userTableInfo;
    }

    /**
     * 上传文件时，查询输入的季度是否已存在
     */
    //@Override
    public boolean queryQuerter(String quarter) {
        UserInfo userInfo = customerDao.queryQuarter(quarter);
        //查询的结果集为空，则说明当前输入的季度在数据库中不存在
        if (userInfo == null) {
            return true;
        }
        return false;
    }

    /**
     * 插入用户某季度的数据
     * @param userInfos
     * @return
     */
    public int insertCustomerFile(List<UserInfo> userInfos) {
        return customerDao.insertCustomerFile(userInfos);
    }


    //根据201801这样的格式，生成前端展示的表头
    private String decorateQuarter(String quarter) {
        String headLeft = quarter.substring(0,4);
        String headMiddle = quarter.substring(4,5);
        if (headMiddle.equals("1")) {
            return headLeft+"第一季度";
        } else if (headMiddle.equals("2")) {
            return headLeft+"第二季度";
        } else if (headMiddle.equals("3")) {
            return headLeft+"第三季度";
        } else if (headMiddle.equals("4")) {
            return headLeft+"第四季度";
        }
        return null;
    }

}
