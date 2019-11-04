package com.springmvc.HYBuy.controller;

import com.springmvc.HYBuy.entity.Users;
import com.springmvc.HYBuy.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;


@Controller
public class UsersController {
  @Autowired
    private UsersService usersService;
    @RequestMapping(value="/adduser",method = RequestMethod.POST )
    @ResponseBody
    public int addUser(String uname, String upwd, HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        Users users = new Users();
        users.setUname(uname);
        users.setUpwd(upwd);
        return usersService.insert(users);
    }
}
