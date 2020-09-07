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
        return "manage/card/initcard_manage";
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
        return "manage/card/querycard_manage";
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
        return "manage/card/querycard_manage";
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
        return "manage/card/detailcard";
    }


    /* ----------------------系统管理部分、用户管理部分-------------------*/

    /**
     * 跳转至用户管理模块。
     * @param map
     * @return
     */
    @RequestMapping("/toUsersManage")
    public String toUsersManage(Map<String,Object> map){
        List<Users> users = iManageService.showUsers(new Users(),new Office(),new Priority());
        List<Office> offices = iManageService.queryOffices();
        List<Priority> priorities = iManageService.queryPriorities();
        map.put("offices",offices);
        map.put("priorities",priorities);
        map.put("users",users);
        return "manage/system/user/users_manage";
    }

    /**
     * 通过多重条件查询user对象。
     * @param users
     * @param map
     * @return
     */
    @RequestMapping("/queryUsers")
    public String queryUsers(Users users,Map<String,Object> map){
        List<Users> usersList = iManageService.showUsers(users, new Office(), new Priority());
        List<Office> offices = iManageService.queryOffices();
        List<Priority> priorities = iManageService.queryPriorities();
        map.put("offices",offices);
        map.put("priorities",priorities);
        map.put("user",users);
        map.put("users",usersList);
        return "manage/system/user/users_manage";
    }

    /**
     * 跳转至user添加界面。
     * @return
     */
    @RequestMapping("/toAddUser")
    public String toAddUser(Map<String,Object> map){
        List<Office> offices = iManageService.queryOffices();
        List<Priority> priorities = iManageService.queryPriorities();
        map.put("offices",offices);
        map.put("priorities",priorities);
        return "manage/system/user/addUser_manage";
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
        return "manage/system/user/updateuser_manage";
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

    /* ----------------------系统管理部分、角色管理部分-------------------*/

    /**
     * 跳转至角色管理页面。
     * @param map
     * @return
     */
    @RequestMapping("/toRoleManage")
    public String toRoleManage(Map<String,List<Priority>> map){
        List<Priority> priorities = iManageService.queryPriorities();
        map.put("priorities",priorities);
        return "manage/system/role/role_manage";
    }

    /**
     * 根据prioId删除priority。
     * @param priority
     * @return
     */
    @RequestMapping("/delPriority")
    public String delPriorityById(Priority priority){
        iManageService.delPriorityById(priority);
        return "redirect:/manage/toRoleManage";
    }

    /**
     * 添加priority对象。
     * @param priority
     * @return
     */
    @RequestMapping("/addPriority")
    public String addPriority(Priority priority){
        iManageService.addPriority(priority);
        return "redirect:/manage/toRoleManage";
    }

    /**
     * 根据prioId查询得到priority后跳转至修改priority页面。
     * @param priority
     * @param map
     * @return
     */
    @RequestMapping("/toUpdatePriority")
    public String toUpdatePriority(Priority priority,Map<String,Priority> map){
        Priority priority1 = iManageService.queryPriorityById(priority);
        map.put("priority",priority1);
        return "manage/system/role/updaterole_manage";
    }

    /**
     * 根据prioId更新priority信息。
     * @param priority
     * @return
     */
    @RequestMapping("/updatePriorityById")
    public String updatePriorityById(Priority priority){
        iManageService.updatePriorityById(priority);
        return "redirect:/manage/toRoleManage";
    }


    /* ----------------------系统管理部分、科室管理部分-------------------*/

    /**
     * 查询所有office对象并且跳转至office_manage。
     * @return
     */
    @RequestMapping("/toOfficeManage")
    public String toOfficeManage(Map<String,List<Office>> map){
        List<Office> offices = iManageService.queryOffices();
        map.put("offices",offices);
        return "manage/system/office/office_manage";
    }

    /**
     * 添加office
     * @param office
     * @return
     */
    @RequestMapping("/addOffice")
    public String addOffice(Office office){
        iManageService.addOffice(office);
        return "redirect:/manage/toOfficeManage";
    }

    /**
     * 通过offId删除指定的office
     * @return
     */
    @RequestMapping("/delOfficeById")
    public String delOfficeById(Office office){
        iManageService.delOfficeById(office);
        return "redirect:/manage/toOfficeManage";
    }

    /**
     * 通过offId查询出指定的office后跳转至修改页面。
     * @param office
     * @param map
     * @return
     */
    @RequestMapping("/toUpdateOffice")
    public String totoUpdateOffice(Office office,Map<String,Office> map){
        Office office1 = iManageService.queryOfficeById(office);
        map.put("office",office1);
        return "manage/system/office/updateoffice_manage";
    }

    /**
     * 通过offId修改指定的office
     * @param office
     * @return
     */
    @RequestMapping("/updateOfficeById")
    public String updateOfficeById(Office office){
        iManageService.updateOfficeById(office);
        return "redirect:/manage/toOfficeManage";
    }


    /* ----------------------系统管理部分、细项管理部分-------------------*/

    /**
     * 查询所有subItems对象并且跳转至subitem_manage。
     * @return
     */
    @RequestMapping("/toSubItemManage")
    public String toSubItemManage(SubItem subItem,Map<String,Object> map){
        List<SubItem> subItems = iManageService.querySubItems(subItem);
        List<Item> items = iManageService.queryItems(new Item(), new Office(), new ItemType());
        map.put("items",items);
        map.put("subItems",subItems);
        return "manage/system/subitem/subitem_manage";
    }

    /**
     * 根据多重条件查询所有的SubItem对象。
     * @param subItem
     * @param map
     * @return
     */
    @RequestMapping("/querySubItem")
    public String querySubItem(SubItem subItem,Map<String,Object> map){
        List<SubItem> subItems = iManageService.querySubItems(subItem);
        map.put("subItem",subItem);
        map.put("subItems",subItems);
        return "manage/system/subitem/subitem_manage";
    }

    /**
     * 跳转至添加SubItem页面。
     * @return
     */
    @RequestMapping("/toAddSubItem")
    public String toAddSubItem(){
        return "manage/system/subitem/addsubitem_manage";
    }

    /**
     * 添加subItem
     * @param subItem
     * @return
     */
    @RequestMapping("/addSubItem")
    public String addOffice(SubItem subItem){
        iManageService.addSubItem(subItem);
        return "redirect:/manage/toSubItemManage";
    }

    /**
     * 通过subId删除指定的subItem
     * @return
     */
    @RequestMapping("/delSubItemById")
    public String delSubItemById(SubItem subItem){
        iManageService.delSubItemById(subItem);
        return "redirect:/manage/toSubItemManage";
    }

    /**
     * 通过subId查询出指定的subItem后跳转至修改页面。
     * @param subItem
     * @param map
     * @return
     */
    @RequestMapping("/toUpdateSubItem")
    public String totoUpdateSubItem(SubItem subItem,Map<String,SubItem> map){
        SubItem subItem1 = iManageService.querySubItemById(subItem);
        map.put("subItem",subItem1);
        return "manage/system/subitem/updatesubitem_manage";
    }

    /**
     * 通过subId修改指定的SubItem
     * @param subItem
     * @return
     */
    @RequestMapping("/updateSubItemById")
    public String updateSubItemById(SubItem subItem){
        iManageService.updateSubItemById(subItem);
        return "redirect:/manage/toSubItemManage";
    }

    /* ----------------------系统管理部分、项目管理部分-------------------*/

    /**
     * 查询所有的items对象并且跳转至item_manage界面
     * @param item
     * @param office
     * @param itemType
     * @param map
     * @return
     */
    @RequestMapping("/toItemManage")
    public String toItemManage(Item item,Office office,ItemType itemType,Map<String,Object> map){
        List<Item> items = iManageService.queryItems(item, office, itemType);
        map.put("items",items);
        return "manage/system/item/item_manage";
    }

    /**
     * 多重查询并且返回界面输出的添加值。
     * @param item
     * @param office
     * @param itemType
     * @param map
     * @return
     */
    @RequestMapping("/findItem")
    public String findItem(Item item,Office office,ItemType itemType,Map<String,Object> map){
        List<Item> items = iManageService.queryItems(item, office, itemType);
        item.setOffice(office);
        item.setItemType(itemType);
        map.put("item",item);
        map.put("items",items);
        return "manage/system/item/item_manage";
    }

    /**
     * 跳转至项目详情页面。
     * @param item
     * @param map
     * @return
     */
    @RequestMapping("/toItemDetail")
    public String toItemDetail(Item item,Map<String,Object> map){
        List<Item> items = iManageService.queryItems(item, new Office(), new ItemType());
        map.put("items",items);
        return "manage/system/item/itemdetail";
    }

    /**
     * 跳转至添加item页面。
     * @param map
     * @return
     */
    @RequestMapping("/toAddItem")
    public String toAddItem(Map<String,Object> map){
        List<Office> offices = iManageService.queryOffices();
        List<ItemType> itemTypes = iManageService.queryItemType();
        List<SubItem> subItems = iManageService.querySubItemsWithNull();
        map.put("subItems",subItems);
        map.put("offices",offices);
        map.put("itemTypes",itemTypes);
        return "manage/system/item/additem";
    }

    /**
     * 添加item。
     * @param item
     * @return
     */
    @RequestMapping("/addItem")
    public String addItem(Item item){
        iManageService.addItem(item);
        return "redirect:/manage/toItemManage";
    }

}
