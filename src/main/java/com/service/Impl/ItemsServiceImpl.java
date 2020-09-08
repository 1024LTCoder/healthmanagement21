package com.service.Impl;

import com.dao.ItemsMapper;
import com.model.pojo.Item;
import com.service.IItemsService;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class ItemsServiceImpl implements IItemsService {

    @Resource
    private ItemsMapper itemsMapper;

    @Override
    public List<Item> findItemsList(Item item) {
        return itemsMapper.findItems(item);
    }

    @Override
    public String addItems(Item item) {
        return itemsMapper.addItems(item);
    }
}
