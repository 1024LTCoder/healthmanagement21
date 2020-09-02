package com.service.impl;

import com.dao.ManageMapper;
import com.model.pojo.Cards;
import com.model.pojo.CardsNo;
import com.service.IManageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ManageServiceImpl implements IManageService {

    @Resource
    private ManageMapper manageMapper;

    @Override
    public List<Cards> queryAllCards(Cards cards) {
        List<Cards> allCards = manageMapper.findAllCards(cards);
        return allCards;
    }

    @Override
    public Integer maxCardId() {
        Integer maxCardId = manageMapper.maxCardId();
        return maxCardId;
    }

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
}
