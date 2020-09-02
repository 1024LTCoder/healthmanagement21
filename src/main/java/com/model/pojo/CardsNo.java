package com.model.pojo;

public class CardsNo {
    private String cardsNo;

    public String getCardsNo() {
        return cardsNo;
    }

    public void setCardsNo(String cardsNo) {
        this.cardsNo = cardsNo;
    }

    public CardsNo() {
    }

    public CardsNo(String cardsNo) {
        this.cardsNo = cardsNo;
    }

    @Override
    public String toString() {
        return "CardsNo{" +
                "cardsNo='" + cardsNo + '\'' +
                '}';
    }
}
