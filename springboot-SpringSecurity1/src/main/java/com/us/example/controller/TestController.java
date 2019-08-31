package com.us.example.controller;

import com.us.example.dao.UserDao;
import com.us.example.domain.ResultModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @Autowired(required = false)
    private  UserDao userDao;

    @RequestMapping("/test")
    public ResultModel test(){
        ResultModel resultModel = new ResultModel();
//        resultModel.setResult(userDao.findByUserName("admin"));
          resultModel.setResult(userDao.selectAll());
          resultModel.setSuccess(true);
        return resultModel;
    }
}
