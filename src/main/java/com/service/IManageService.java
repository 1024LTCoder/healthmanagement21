package com.service;

import com.model.pojo.*;

import java.util.List;

public interface IManageService {
    /**
     * 查询所有的卡片对象
     * @return
     */
    List<Cards> queryAllCards(Cards cards);

    /**
     * 获取cards数据中最大的id值。
     * @return
     */
    Integer maxCardId();

    /**
     * 使用cardsNo添加新cards数据
     * @param cardsNum
     */
    void addCards(int cardsNum);

    /**
     * 删除card卡
     * @param cards
     */
    void delCard(Cards cards);

    /**
     * 显示所有的user对象
     * @return
     */
    List<Users> showUsers(Users users,Office office,Priority priority);

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

    /**
     * 查询所有的item对象
     * @param item
     * @param office
     * @param itemType
     * @return
     */
    List<Item> queryItems(Item item,Office office,ItemType itemType);

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
