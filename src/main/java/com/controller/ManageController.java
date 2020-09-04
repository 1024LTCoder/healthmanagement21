package com.controller;

import com.model.pojo.*;
import com.service.IManageService;
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


    /* ----------------------卡片管理部分、体检卡初始化部分-------------------*/
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
     * 根据cardID删除card信息。
     * @param cards
     * @return
     */
    @RequestMapping("/delCard")
    public String delCard(Cards cards){
        iManageService.delCard(cards);
        return "redirect:/manage/toinitcard";
    }

    /* ----------------------卡片管理部分、查询体检卡部分-------------------*/
    /**
     * 跳转至体检卡查询界面
     * @return
     */
    @RequestMapping("/toquerycard")
    public String toQueryCard(){
        return "manage/querycard_manage";
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

    /**
     * 体检卡详细信息
     * @param cards
     * @param person
     * @param map
     * @return
     */
    @RequestMapping("/toDetailCard")
    public String toDetailCard(Cards cards,Person person,Map<String,List<Cards>> map){
        cards.setPerson(person);
        List<Cards> cards1 = iManageService.queryAllCards(cards);
        map.put("card",cards1);
        return "manage/detailcard";
    }


    /* ----------------------系统管理部分、用户管理部分-------------------*/

    /**
     * 跳转至用户管理模块。
     * @param map
     * @return
     */
    @RequestMapping("/toUsersManage")
    public String toUsersManage(Map<String,List<Users>> map){
        List<Users> users = iManageService.showUsers();
        map.put("users",users);
        return "manage/system/users_manage";
    }

    /**
     * 添加user对象。
     * @param users
     * @param office
     * @param priority
     * @return
     */
    @RequestMapping("/addUser")
    public String addUser(Users users , Office office, Priority priority){
        users.setOffice(office);
        users.setPriority(priority);
        iManageService.addUser(users);
        return "redirect:/manage/toUsersManage";
    }

    /**
     * 通过userId删除user
     * @param users
     * @return
     */
    @RequestMapping("/delUser")
    public String delUserById(Users users){
        iManageService.delUserById(users);
        return "redirect:/manage/toUsersManage";
    }

    /**
     * 根据userId跳转至指定的修改页面
     * @param users
     * @param map
     * @return
     */
    @RequestMapping("/toUpdateUser")
    public String toUpdateUser(Users users,Map<String,Users> map) {
        Users user = iManageService.queryUserById(users);
        map.put("user",user);
        return "manage/system/updateuser_manage";
    }

    /**
     * 通过userId修改指定的user对象
     * @param users
     * @return
     */
    @RequestMapping("/updateUser")
    public String updateUserById(Users users){
        iManageService.updateUserById(users);
        return "redirect:/manage/toUsersManage";
    }
}
