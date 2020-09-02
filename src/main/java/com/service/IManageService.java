package com.service;

import com.model.pojo.Cards;
import com.model.pojo.CardsNo;

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
}
