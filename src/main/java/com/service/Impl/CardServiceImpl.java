package com.service.Impl;

import com.dao.CardMapper;
import com.model.pojo.Cards;
import com.service.ICardService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CardServiceImpl implements ICardService {

    @Resource
    private CardMapper cardMapper;

    @Override
    public List<Cards> getCard(Cards cards) {
        return cardMapper.getNewCard(cards);
    }

}
