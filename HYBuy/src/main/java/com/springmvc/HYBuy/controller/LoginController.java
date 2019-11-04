package com.springmvc.HYBuy.controller;

import com.springmvc.HYBuy.entity.Users;
import com.springmvc.HYBuy.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;


@Controller
public class LoginController {
    @Autowired
    private UsersService usersService;

    @RequestMapping(value = "/checkuser" , method = RequestMethod.GET)
    @ResponseBody
    public String checkuser(String uname,String upwd,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String flag = "error";
        ArrayList<Users> usersArrayList = usersService.selectAll();
        for (Users users:usersArrayList) {
            System.out.print(users.getUpwd()+users.getUpwd());
            if (users.getUname().equals(uname)&users.getUpwd().equals(upwd)) {
                request.getSession().setAttribute("uname",uname);
                flag = "success";
                break;
            }
        }
        System.out.print(flag);
        return flag;
    }
    @RequestMapping(value="/regist2",method = RequestMethod.GET)
    public String showLogin(){
        System.out.println("进入注册页面控制器");
        return "/regist2";
    }
    @RequestMapping(value="/login2",method = RequestMethod.GET)
    public String showUpload(){
        System.out.println("进入登录页面控制器");
        return "/login2";
    }
    @RequestMapping(value="/index2",method = RequestMethod.GET)
    public String showIndex(){
        System.out.println("进入登录页面控制器");
        return "/index2";
    }

}
