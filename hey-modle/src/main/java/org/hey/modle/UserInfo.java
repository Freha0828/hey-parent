package org.hey.modle;

import java.util.Date;

public class UserInfo {

    private Integer userId;
    private String areaCode;//市县
    private String orgCode;//机构编码
    private String cardCode;//卡号
    private String idCardCode;//本号
    private String account;//账户
    private String userName;//用户名
    private String balance;//余额
    private String interestBase;//利息基数
    private String interestBalance;//结息余额；
    private String quarter;//数据所属季度
/*    private Date createTime;
    private Integer createUser;
    private Date updateTime;

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Integer createUser) {
        this.createUser = createUser;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }*/

    public String getQuarter() {
        return quarter;
    }

    public void setQuarter(String quarter) {
        this.quarter = quarter;
    }

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    public String getOrgCode() {
        return orgCode;
    }

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode;
    }

    public String getCardCode() {
        return cardCode;
    }

    public void setCardCode(String cardCode) {
        this.cardCode = cardCode;
    }

    public String getIdCardCode() {
        return idCardCode;
    }

    public void setIdCardCode(String idCardCode) {
        this.idCardCode = idCardCode;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getInterestBase() {
        return interestBase;
    }

    public void setInterestBase(String interestBase) {
        this.interestBase = interestBase;
    }

    public String getInterestBalance() {
        return interestBalance;
    }

    public void setInterestBalance(String interestBalance) {
        this.interestBalance = interestBalance;
    }


    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "UserInfo [areaCode=" + areaCode + ", orgCode=" + orgCode + ", cardCode=" + cardCode + ", account="
                + account + ", userName=" + userName + ", balance=" + balance + ", interestBase=" + interestBase
                + ", interestBalance=" + interestBalance + "]";
    }
}
