package com.model.pojo;

public class AssoItem {
    private Integer assoId;
    private Integer itemId;
    private Association association;
    private Item item;

    public AssoItem() {
    }

    public AssoItem(Integer assoId, Integer itemId, Association association, Item item) {
        this.assoId = assoId;
        this.itemId = itemId;
        this.association = association;
        this.item = item;
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

    public Association getAssociation() {
        return association;
    }

    public void setAssociation(Association association) {
        this.association = association;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    @Override
    public String toString() {
        return "AssoItem{" +
                "assoId=" + assoId +
                ", itemId=" + itemId +
                ", association=" + association +
                ", item=" + item +
                '}';
    }
}
