package com.dao;

import com.model.pojo.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ManageMapper {

    /* ----------------------卡片管理部分-------------------*/

    /**
     * 寻找所有的cards
     * @return
     */
    List<Cards> findAllCards(Cards cards);

    /**
     * 获取cards数据中最大的id值。
     * @return
     */
    Integer maxCardId();

    /**
     * 添加cards的集合
     * @param list
     */
    void addCards(List<CardsNo> list);

    /**
     * 删除card卡
     * @param cards
     */
    void delCard(Cards cards);

    /* ----------------------系统管理部分、用户管理部分-------------------*/

    /**
     * 查询所有的user对象。
     * @return
     */
    List<Users> queryUsers(Users users);

    /**
     * 添加user对象
     * @param users
     */
    void addUser(Users users);

    /**
     * 通过userID删除user
     * @param users
     */
    void delUserById(Users users);

    /**
     * 通过userId查询单个user对象。
     * @param users
     * @return
     */
    Users queryUserById(Users users);

    /**
     * 通过userId修改user对象
     * @param users
     */
    void updateUserById(Users users);

    /* ----------------------系统管理部分、角色管理部分-------------------*/

    /**
     * 查询所有的角色（权限）。
     * @return
     */
    List<Priority> queryPriorities();

    /**
     * 通过prioId删除priority。
     * @param priority
     */
    void delPriorityById(Priority priority);

    /**
     * 添加priority角色对象
     * @param priority
     */
    void addPriority(Priority priority);

    /**
     * 通过prioId查询指定的priority对象。
     * @param priority
     * @return
     */
    Priority queryPriorityById(Priority priority);

    /**
     * 根据prioId进行对指定的priority修改。
     * @param priority
     */
    void updatePriorityById(Priority priority);

    /* ----------------------系统管理部分、科室管理部分-------------------*/
    /**
     * 查询所有offices。
     * @return
     */
    List<Office> queryOffices();

    /**
     * 通过offId删除office。
     * @param office
     */
    void delOfficeById(Office office);

    /**
     * 增加office。
     * @param office
     */
    void addOffice(Office office);

    /**
     * 通过offId查询指定的office。
     * @param office
     * @return
     */
    Office queryOfficeById(Office office);

    /**
     * 通过offId查询指定的office。
     * @param office
     */
    void updateOfficeById(Office office);

    /* ----------------------系统管理部分、细项管理部分-------------------*/

    /**
     * 查询所有SubItems。
     * @return
     */
    List<SubItem> querySubItems(SubItem subItem);

    /**
     * 通过subId删除指定的SubItem
     * @param subItem
     */
    void delSubItemById(SubItem subItem);

    /**
     * 添加SubItem对象
     * @param subItem
     */
    void addSubItem(SubItem subItem);

    /**
     * 通过subId查询指定的SubItem对象
     * @param subItem
     * @return
     */
    SubItem querySubItemById(SubItem subItem);

    /**
     * 通过subId更改指定的SubItem对象。
     * @param subItem
     */
    void updateSubItemById(SubItem subItem);

    /* ----------------------系统管理部分、项目管理部分-------------------*/

    /**
     * 查询所有的item对象
     * @param item
     * @return
     */
    List<Item> queryItems(Item item);

    /**
     * 查询所有的itemtype
     * @return
     */
    List<ItemType> queryItemType();

    /**
     * 查询所有项目id为空的子项目
     * @return
     */
    List<SubItem> querySubItemsWithNull();

    /**
     * 添加item。
     */
    void addItem(Item item);
}
