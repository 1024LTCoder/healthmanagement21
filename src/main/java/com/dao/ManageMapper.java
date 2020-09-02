package com.dao;

import com.model.pojo.Cards;
import com.model.pojo.CardsNo;
import org.apache.ibatis.annotations.Param;
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


}
