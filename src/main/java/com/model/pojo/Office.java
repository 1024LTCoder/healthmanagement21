package com.model.pojo;

public class Office {
    private Integer offId;
    private String offName;

    public Office() {
    }

    public Office(Integer offId, String offName) {
        this.offId = offId;
        this.offName = offName;
    }

    public Integer getOffId() {
        return offId;
    }

    public void setOffId(Integer offId) {
        this.offId = offId;
    }

    public String getOffName() {
        return offName;
    }

    public void setOffName(String offName) {
        this.offName = offName;
    }

    @Override
    public String toString() {
        return "Office{" +
                "offId=" + offId +
                ", offName='" + offName + '\'' +
                '}';
    }
}
