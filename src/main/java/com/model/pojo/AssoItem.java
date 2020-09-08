package com.model.pojo;

import java.util.List;

public class AssoItem {
    private Integer assoId;
    private Integer itemId;

    private Item item;

    //一对一 配association
    private Association association;

    //一对多 配collection
    private List<Item> itemList;

    public AssoItem() {
    }

    public AssoItem(Integer assoId, Integer itemId, Item item, Association association, List<Item> itemList) {
        this.assoId = assoId;
        this.itemId = itemId;
        this.item = item;
        this.association = association;
        this.itemList = itemList;
    }

    public Integer getAssoId() {
        return assoId;
    }

    public void setAssoId(Integer assoId) {
        this.assoId = assoId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Association getAssociation() {
        return association;
    }

    public void setAssociation(Association association) {
        this.association = association;
    }

    public List<Item> getItemList() {
        return itemList;
    }

    public void setItemList(List<Item> itemList) {
        this.itemList = itemList;
    }

    @Override
    public String toString() {
        return "AssoItem{" +
                "assoId=" + assoId +
                ", itemId=" + itemId +
                ", item=" + item +
                ", association=" + association +
                ", itemList=" + itemList +
                '}';
    }
}
