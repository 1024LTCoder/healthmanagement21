package com.service;

import com.model.pojo.Person;

import java.util.List;

public interface IPersonService {
    List<Person> findCard(Person person);
    boolean addCard(Person person);
    boolean delCard(Person person);
    List<Person> searchCardById(Person person);
}
