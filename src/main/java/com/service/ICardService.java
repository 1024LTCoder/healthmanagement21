package com.service;

import com.model.pojo.Cards;

import java.util.List;

public interface ICardService {
    List<Cards> getCard(Cards cards);
}
