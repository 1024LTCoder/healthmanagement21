package com.service;

import com.model.pojo.Item;

import java.util.List;

public interface IItemsService {
    List<Item> findItemsList(Item item);
    String addItems(Item item);
}
