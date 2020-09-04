package com.dao;

import com.model.pojo.Cards;
import com.model.pojo.CardsNo;
import com.model.pojo.Users;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ManageMapper {
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

    /**
     * 查询所有的user对象。
     * @return
     */
    List<Users> queryUsers();

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
