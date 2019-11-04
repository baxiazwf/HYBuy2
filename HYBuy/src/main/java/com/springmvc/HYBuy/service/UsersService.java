package com.springmvc.HYBuy.service;

import com.springmvc.HYBuy.entity.Users;

import java.util.ArrayList;


public interface UsersService {
    int insert(Users record);
    int deleteByPrimaryKey(Integer uid);
    int updateByPrimaryKeySelective(Users record);
    Users selectByPrimaryKey(Integer uid);
    ArrayList<Users> selectAll();
}
