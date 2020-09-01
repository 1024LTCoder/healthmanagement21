package com.model.pojo;

public class Cards {
    private Integer card_id;
    private Integer per_id;
    private String card_no;
    private Double card_money;
    private Person person;

    public Cards(Integer card_id, Integer per_id, String card_no, Double card_money, Person person) {
        this.card_id = card_id;
        this.per_id = per_id;
        this.card_no = card_no;
        this.card_money = card_money;
        this.person = person;
    }

    public Cards() {
    }

    public Integer getCard_id() {
        return card_id;
    }

    public void setCard_id(Integer card_id) {
        this.card_id = card_id;
    }

    public Integer getPer_id() {
        return per_id;
    }

    public void setPer_id(Integer per_id) {
        this.per_id = per_id;
    }

    public String getCard_no() {
        return card_no;
    }

    public void setCard_no(String card_no) {
        this.card_no = card_no;
    }

    public Double getCard_money() {
        return card_money;
    }

    public void setCard_money(Double card_money) {
        this.card_money = card_money;
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
                "card_id=" + card_id +
                ", per_id=" + per_id +
                ", card_no='" + card_no + '\'' +
                ", card_money=" + card_money +
                ", person=" + person +
                '}';
    }
}
