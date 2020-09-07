package com.model.pojo;

import java.util.List;

public class Item {
    private Integer itemId;
    private Integer offId;
    private Integer assoId;
    private String itemName;
    private String itemCode;
    private Double itemPrice;
    private Integer itemTypeId;
    private Office office;
    private ItemType itemType;
    private List<SubItem> subItems;


    public Item() {
    }

    public Item(Integer itemId, Integer offId, Integer assoId, String itemName, String itemCode, Double itemPrice, Integer itemTypeId, Office office, ItemType itemType, List<SubItem> subItems) {
        this.itemId = itemId;
        this.offId = offId;
        this.assoId = assoId;
        this.itemName = itemName;
        this.itemCode = itemCode;
        this.itemPrice = itemPrice;
        this.itemTypeId = itemTypeId;
        this.office = office;
        this.itemType = itemType;
        this.subItems = subItems;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getOffId() {
        return offId;
    }

    public void setOffId(Integer offId) {
        this.offId = offId;
    }

    public Integer getAssoId() {
        return assoId;
    }

    public void setAssoId(Integer assoId) {
        this.assoId = assoId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public Double getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(Double itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Integer getItemTypeId() {
        return itemTypeId;
    }

    public void setItemTypeId(Integer itemTypeId) {
        this.itemTypeId = itemTypeId;
    }

    public Office getOffice() {
        return office;
    }

    public void setOffice(Office office) {
        this.office = office;
    }

    public ItemType getItemType() {
        return itemType;
    }

    public void setItemType(ItemType itemType) {
        this.itemType = itemType;
    }

    public List<SubItem> getSubItems() {
        return subItems;
    }

    public void setSubItems(List<SubItem> subItems) {
        this.subItems = subItems;
    }

    @Override
    public String toString() {
        return "Item{" +
                "itemId=" + itemId +
                ", offId=" + offId +
                ", assoId=" + assoId +
                ", itemName='" + itemName + '\'' +
                ", itemCode='" + itemCode + '\'' +
                ", itemPrice=" + itemPrice +
                ", itemTypeId=" + itemTypeId +
                ", office=" + office +
                ", itemType=" + itemType +
                ", subItems=" + subItems +
                '}';
    }
}
