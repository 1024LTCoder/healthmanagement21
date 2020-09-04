package com.controller;

import com.model.pojo.Person;
import com.service.IPersonService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/charge")
public class ChargeController {

    @Resource
    private IPersonService iPersonService;
    ModelAndView mv = new ModelAndView();
    /**
     * 跳转至建卡页面
     * @return
     */
    @RequestMapping("/toCard")
    public ModelAndView toCard(Person person){
        List<Person> persons = iPersonService.findCard(person);
        mv.addObject("persons",persons);
        mv.setViewName("charge/card_charge");
        return mv;
    }

    @RequestMapping("/doAddCard")
    public String doAddCard(Person person){
        iPersonService.addCard(person);
        return "redirect:/charge/toCard";
    }

    @RequestMapping("/doDelCard")
    public String doDelCard(Person person){
        iPersonService.delCard(person);
        return "redirect:/charge/toCard";
    }

    @RequestMapping("/searchById")
    public ModelAndView searchById(Person person){
        List<Person> persons = iPersonService.searchCardById(person);
        mv.addObject("pe",persons);
        mv.setViewName("charge/card_table");
        return mv;
    }
}
