package com.dao;

import com.model.pojo.Item;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ItemsMapper {
    List<Item> findItems(Item item);
    String addItems(Item item);
}
