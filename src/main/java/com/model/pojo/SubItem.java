package com.model.pojo;

public class SubItem {
    private Integer subId;
    private String subName;
    private String subCode;
    private Double subPrice;
    private Integer itemId;
    private String subUnit;
    private Integer subRefer;
    private Integer subUpper;
    private Integer subLower;

    public SubItem() {
    }

    public SubItem(Integer subId, String subName, String subCode, Double subPrice, Integer itemId, String subUnit, Integer subRefer, Integer subUpper, Integer subLower) {
        this.subId = subId;
        this.subName = subName;
        this.subCode = subCode;
        this.subPrice = subPrice;
        this.itemId = itemId;
        this.subUnit = subUnit;
        this.subRefer = subRefer;
        this.subUpper = subUpper;
        this.subLower = subLower;
    }

    public Integer getSubId() {
        return subId;
    }

    public void setSubId(Integer subId) {
        this.subId = subId;
    }

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    public String getSubCode() {
        return subCode;
    }

    public void setSubCode(String subCode) {
        this.subCode = subCode;
    }

    public Double getSubPrice() {
        return subPrice;
    }

    public void setSubPrice(Double subPrice) {
        this.subPrice = subPrice;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getSubUnit() {
        return subUnit;
    }

    public void setSubUnit(String subUnit) {
        this.subUnit = subUnit;
    }

    public Integer getSubRefer() {
        return subRefer;
    }

    public void setSubRefer(Integer subRefer) {
        this.subRefer = subRefer;
    }

    public Integer getSubUpper() {
        return subUpper;
    }

    public void setSubUpper(Integer subUpper) {
        this.subUpper = subUpper;
    }

    public Integer getSubLower() {
        return subLower;
    }

    public void setSubLower(Integer subLower) {
        this.subLower = subLower;
    }

    @Override
    public String toString() {
        return "SubItem{" +
                "subId=" + subId +
                ", subName='" + subName + '\'' +
                ", subCode='" + subCode + '\'' +
                ", subPrice=" + subPrice +
                ", itemId=" + itemId +
                ", subUnit='" + subUnit + '\'' +
                ", subRefer=" + subRefer +
                ", subUpper=" + subUpper +
                ", subLower=" + subLower +
                '}';
    }
}
