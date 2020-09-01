package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage")
public class ManageController {

    /**
     * 跳转至体检卡初始化界面
     * @return
     */
    @RequestMapping("/toinitcard")
    public String toInitCard(){
        return "manage/initcard_manage";
    }

    /**
     * 跳转至体检卡查询界面
     * @return
     */
    @RequestMapping("/toquerycard")
    public String toQueryCard(){
        return "manage/querycard_manage";
    }
}
