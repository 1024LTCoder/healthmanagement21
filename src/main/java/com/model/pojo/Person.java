package com.model.pojo;

import java.util.Date;

public class Person {
    private Integer perId;
    private String perName;
    private String perTele;
    private Integer perAge;
    private String perAddr;
    private String perBlood;
    private Date perBorn;
    private Integer cardId;
    private String perSex;
    private Cards cards;

    public Person(Integer perId, String perName, String perTele, Integer perAge, String perAddr, String perBlood, Date perBorn, Integer cardId, String perSex, Cards cards) {
        this.perId = perId;
        this.perName = perName;
        this.perTele = perTele;
        this.perAge = perAge;
        this.perAddr = perAddr;
        this.perBlood = perBlood;
        this.perBorn = perBorn;
        this.cardId = cardId;
        this.perSex = perSex;
        this.cards = cards;
    }

    public Person() {
    }

    public Integer getPerId() {
        return perId;
    }

    public void setPerId(Integer perId) {
        this.perId = perId;
    }

    public String getPerName() {
        return perName;
    }

    public void setPerName(String perName) {
        this.perName = perName;
    }

    public String getPerTele() {
        return perTele;
    }

    public void setPerTele(String perTele) {
        this.perTele = perTele;
    }

    public Integer getPerAge() {
        return perAge;
    }

    public void setPerAge(Integer perAge) {
        this.perAge = perAge;
    }

    public String getPerAddr() {
        return perAddr;
    }

    public void setPerAddr(String perAddr) {
        this.perAddr = perAddr;
    }

    public String getPerBlood() {
        return perBlood;
    }

    public void setPerBlood(String perBlood) {
        this.perBlood = perBlood;
    }

    public Date getPerBorn() {
        return perBorn;
    }

    public void setPerBorn(Date perBorn) {
        this.perBorn = perBorn;
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public String getPerSex() {
        return perSex;
    }

    public void setPerSex(String perSex) {
        this.perSex = perSex;
    }

    public Cards getCards() {
        return cards;
    }

    public void setCards(Cards cards) {
        this.cards = cards;
    }

    @Override
    public String toString() {
        return "Person{" +
                "perId=" + perId +
                ", perName='" + perName + '\'' +
                ", perTele='" + perTele + '\'' +
                ", perAge=" + perAge +
                ", perAddr='" + perAddr + '\'' +
                ", perBlood='" + perBlood + '\'' +
                ", perBorn=" + perBorn +
                ", cardId=" + cardId +
                ", perSex='" + perSex + '\'' +
                ", cards=" + cards +
                '}';
    }
}
