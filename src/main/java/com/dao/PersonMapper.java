package com.dao;

import com.model.pojo.Person;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PersonMapper {
    List<Person> findCard(Person person);
    boolean addCard(Person person);
    boolean delCard(Person person);
    List<Person> searchCardById(Person person);
}
