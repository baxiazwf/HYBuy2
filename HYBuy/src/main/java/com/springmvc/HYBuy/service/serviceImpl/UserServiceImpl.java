package com.springmvc.HYBuy.service.serviceImpl;

import com.springmvc.HYBuy.dao.UsersMapper;
import com.springmvc.HYBuy.entity.Users;
import com.springmvc.HYBuy.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;

@Service
public class UserServiceImpl implements UsersService {
@Autowired
private UsersMapper usersMapper;
    @Override
    public int insert(Users record) {
        return usersMapper.insert(record);
    }

    @Override
    public int deleteByPrimaryKey(Integer uid) {
        return usersMapper.deleteByPrimaryKey(uid);
    }

    @Override
    public int updateByPrimaryKeySelective(Users record) {

        return usersMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Users selectByPrimaryKey(Integer uid) {

        return usersMapper.selectByPrimaryKey(uid);
    }

    @Override
    public ArrayList<Users> selectAll() {
        return usersMapper.selectAll();
    }
}
