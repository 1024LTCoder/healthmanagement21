package com.model.pojo;

public class Cards {
    private Integer cardId;
    private Integer perId;
    private String cardNo;
    private Double cardMoney;
    private Person person;

    public Cards() {
    }

    public Cards(Integer cardId, Integer perId, String cardNo, Double cardMoney, Person person) {
        this.cardId = cardId;
        this.perId = perId;
        this.cardNo = cardNo;
        this.cardMoney = cardMoney;
        this.person = person;
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public Integer getPerId() {
        return perId;
    }

    public void setPerId(Integer perId) {
        this.perId = perId;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public Double getCardMoney() {
        return cardMoney;
    }

    public void setCardMoney(Double cardMoney) {
        this.cardMoney = cardMoney;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    @Override
    public String toString() {
        return "Cards{" +
                "cardId=" + cardId +
                ", perId=" + perId +
                ", cardNo='" + cardNo + '\'' +
                ", cardMoney=" + cardMoney +
                ", person=" + person +
                '}';
    }
}