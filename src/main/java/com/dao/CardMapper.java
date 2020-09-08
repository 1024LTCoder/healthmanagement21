package com.dao;

import com.model.pojo.Cards;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CardMapper {
    List<Cards> getNewCard(Cards cards);
}
