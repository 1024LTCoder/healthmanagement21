package com.model.pojo;

public class Priority {
    private Integer prioId;
    private String prioName;
    private String prioDesc;

    public Priority() {
    }

    public Priority(Integer prioId, String prioName, String prioDesc) {
        this.prioId = prioId;
        this.prioName = prioName;
        this.prioDesc = prioDesc;
    }

    public Integer getPrioId() {
        return prioId;
    }

    public void setPrioId(Integer prioId) {
        this.prioId = prioId;
    }

    public String getPrioName() {
        return prioName;
    }

    public void setPrioName(String prioName) {
        this.prioName = prioName;
    }

    public String getPrioDesc() {
        return prioDesc;
    }

    public void setPrioDesc(String prioDesc) {
        this.prioDesc = prioDesc;
    }

    @Override
    public String toString() {
        return "Priority{" +
                "prioId=" + prioId +
                ", prioName='" + prioName + '\'' +
                ", prioDesc='" + prioDesc + '\'' +
                '}';
    }
}
