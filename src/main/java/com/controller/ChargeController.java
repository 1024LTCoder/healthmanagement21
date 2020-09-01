package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/charge")
public class ChargeController {

    //跳转至建卡页面
    @RequestMapping("/tocard")
    public String toCard(){
        return "charge/card_charge";
    }
}
