package com.model.pojo;

public class Association {
    private Integer assoId;
    private String assoName;
    private Integer itemId;
    private Double assoPrice;

    public Association() {
    }

    public Association(Integer assoId, String assoName, Integer itemId, Double assoPrice) {
        this.assoId = assoId;
        this.assoName = assoName;
        this.itemId = itemId;
        this.assoPrice = assoPrice;
    }

    public Integer getAssoId() {
        return assoId;
    }

    public void setAssoId(Integer assoId) {
        this.assoId = assoId;
    }

    public String getAssoName() {
        return assoName;
    }

    public void setAssoName(String assoName) {
        this.assoName = assoName;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Double getAssoPrice() {
        return assoPrice;
    }

    public void setAssoPrice(Double assoPrice) {
        this.assoPrice = assoPrice;
    }

    @Override
    public String toString() {
        return "Association{" +
                "assoId=" + assoId +
                ", assoName='" + assoName + '\'' +
                ", itemId=" + itemId +
                ", assoPrice=" + assoPrice +
                '}';
    }
}
