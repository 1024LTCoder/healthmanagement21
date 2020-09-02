package com.controller;

import com.model.pojo.Cards;
import com.model.pojo.Person;
import com.service.IManageService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/manage")
public class ManageController {
    @Resource
    private IManageService iManageService;

    /**
     * 跳转至体检卡初始化界面
     * @param map
     * @return
     */
    @RequestMapping("/toinitcard")
    public String toInitCard(Map<String,List<Cards>> map){
        Cards card = new Cards();
        Person person = new Person();
        card.setPerson(person);
        List<Cards> cards = iManageService.queryAllCards(card);
        map.put("cards",cards);
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


    /**
     * 新增、添加新cards
     * @param addNo
     * @return
     */
    @RequestMapping("/addCards")
    public String addCards(Integer addNo){
        iManageService.addCards(addNo);
        System.out.println("***************************");
        System.out.println(addNo);
        return "redirect:/manage/toinitcard";
    }

    /**
     * 模糊查询所有的cards。
     * @param cards
     * @param map
     * @return
     */
    @RequestMapping("/queryCards")
    public String queryCards(Cards cards,Person person,Map<String,Object> map){
        cards.setPerson(person);
        List<Cards> card = iManageService.queryAllCards(cards);
        map.put("cards",card);
        map.put("card",cards);
        map.put("person",person);
        return "manage/querycard_manage";
    }
}
