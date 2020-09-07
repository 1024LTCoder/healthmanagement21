package com.service.impl;

import com.dao.ManageMapper;
import com.model.pojo.*;
import com.service.IManageService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ManageServiceImpl implements IManageService {

    @Resource
    private ManageMapper manageMapper;

    /**
     * 查询所有的card对象
     * @param cards
     * @return
     */
    @Override
    public List<Cards> queryAllCards(Cards cards) {
        List<Cards> allCards = manageMapper.findAllCards(cards);
        return allCards;
    }

    /**
     * 查出cardID的最大值
     * @return
     */
    @Override
    public Integer maxCardId() {
        Integer maxCardId = manageMapper.maxCardId();
        return maxCardId;
    }

    /**
     * 插入空白card对象。
     * @param cardsNum
     */
    @Override
    public void addCards(int cardsNum) {
        //调用maxCardID。找到cards最大的ID数
        Integer maxCardId = manageMapper.maxCardId();
        //设置卡片编号头
        String s = "S";
        //创建list和cardsNo对象接收结果
        List<CardsNo> list = new ArrayList<>();
        CardsNo cardsNo = null;

        //循环添加卡片编号
        for (int i = maxCardId+1; i <= maxCardId+cardsNum; i++){
            cardsNo = new CardsNo();
            //使用"%05d"，十进制5位数，不足使用0来补充.
            String format = String.format("%05d",i);
            //拼接卡片编号
            String str = s+format;
            //将卡片编号添加进入类中。
            cardsNo.setCardsNo(str);
            list.add(cardsNo);
        }
        //调用addCards批量添加数据。
        manageMapper.addCards(list);
    }

    /**
     * 通过cardID删除指定的card对象
     * @param cards
     */
    @Override
    @Transactional(rollbackFor=Exception.class)
    public void delCard(Cards cards) {
        manageMapper.delCard(cards);
    }

    /**
     * 显示所有的user对象
     * @return
     */
    @Override
    public List<Users> showUsers(Users users ,Office office,Priority priority) {
        users.setOffice(office);
        users.setPriority(priority);
        return manageMapper.queryUsers(users);
    }

    /**
     * 添加user对象
     * @param users
     */
    @Override
    public void addUser(Users users) {
        manageMapper.addUser(users);
    }

    /**
     * 通过userId删除指定的user对象
     * @param users
     */
    @Override
    public void delUserById(Users users) {
        manageMapper.delUserById(users);
    }

    /**
     * 通过userId查询user。
     * @param users
     * @return
     */
    @Override
    public Users queryUserById(Users users) {
        return manageMapper.queryUserById(users);
    }

    /**
     * 通过userId修改user对象
     * @param users
     */
    @Override
    public void updateUserById(Users users) {
        manageMapper.updateUserById(users);
    }

    /**
     * 查询所有的权限角色
     */
    @Override
    public List<Priority> queryPriorities() {
       return manageMapper.queryPriorities();
    }

    /**
     * 通过prioId删除priority。
     * @param priority
     */
    @Override
    public void delPriorityById(Priority priority) {
        manageMapper.delPriorityById(priority);
    }

    /**
     * 添加priority对象
     * @param priority
     */
    @Override
    public void addPriority(Priority priority) {
        manageMapper.addPriority(priority);
    }

    /**
     * 通过prioId查询priority。
     * @param priority
     * @return
     */
    @Override
    public Priority queryPriorityById(Priority priority) {
        return manageMapper.queryPriorityById(priority);
    }

    /**
     * 通过prioId更新priority。
     * @param priority
     */
    @Override
    public void updatePriorityById(Priority priority) {
        manageMapper.updatePriorityById(priority);
    }

    /**
     * 查询所有的offices。
     * @return
     */
    @Override
    public List<Office> queryOffices() {
        return manageMapper.queryOffices();
    }

    /**
     * 通过offId删除office。
     * @param office
     */
    @Override
    public void delOfficeById(Office office) {
        manageMapper.delOfficeById(office);
    }

    /**
     * 添加office对象。
     * @param office
     */
    @Override
    public void addOffice(Office office) {
        manageMapper.addOffice(office);
    }

    /**
     * 通过offId查询指定的office。
     * @param office
     * @return
     */
    @Override
    public Office queryOfficeById(Office office) {
        return manageMapper.queryOfficeById(office);
    }

    /**
     * 通过offId更新指定的office。
     * @param office
     */
    @Override
    public void updateOfficeById(Office office) {
        manageMapper.updateOfficeById(office);
    }

    /**
     * 查询所有的SubItems
     * @return
     */
    @Override
    public List<SubItem> querySubItems(SubItem subItem) {
        return manageMapper.querySubItems(subItem);
    }

    /**
     * 根据subId删除指定的SubItem
     * @param subItem
     */
    @Override
    public void delSubItemById(SubItem subItem) {
        manageMapper.delSubItemById(subItem);
    }

    /**
     * 添加SubItem
     * @param subItem
     */
    @Override
    public void addSubItem(SubItem subItem) {
        manageMapper.addSubItem(subItem);
    }

    /**
     * 根据subId查询指定的SubItem
     * @param subItem
     * @return
     */
    @Override
    public SubItem querySubItemById(SubItem subItem) {
        return manageMapper.querySubItemById(subItem);
    }

    /**
     * 根据subId更新指定的SubItem
     * @param subItem
     */
    @Override
    public void updateSubItemById(SubItem subItem) {
        manageMapper.updateSubItemById(subItem);
    }

    /**
     * 多重查询items。
     * @param item
     * @param office
     * @param itemType
     * @return
     */
    @Override
    public List<Item> queryItems(Item item, Office office, ItemType itemType) {
        item.setOffice(office);
        item.setItemType(itemType);
        return manageMapper.queryItems(item);
    }

    /**
     * 查询所有的itemtype。
     * @return
     */
    @Override
    public List<ItemType> queryItemType() {
        return manageMapper.queryItemType();
    }

    /**
     * 查询所有项目id为空的子项目。
     * @return
     */
    @Override
    public List<SubItem> querySubItemsWithNull() {
        return manageMapper.querySubItemsWithNull();
    }

    @Override
    public void addItem(Item item) {
        manageMapper.addItem(item);
    }
}
