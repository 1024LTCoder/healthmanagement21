package com.service;

import com.model.pojo.Cards;
import com.model.pojo.CardsNo;
import com.model.pojo.Users;

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
    List<Users> showUsers();

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
}
