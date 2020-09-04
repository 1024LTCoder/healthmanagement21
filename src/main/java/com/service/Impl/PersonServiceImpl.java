package com.service.Impl;

import com.dao.PersonMapper;
import com.model.pojo.Person;
import com.service.IPersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PersonServiceImpl implements IPersonService {

    @Resource
    private PersonMapper personMapper;

    @Override
    public List<Person> findCard(Person person) {
        return personMapper.findCard(person);
    }

    @Override
    public boolean addCard(Person person) {
        return personMapper.addCard(person);
    }

    @Override
    public boolean delCard(Person person) {
        return personMapper.delCard(person);
    }

    @Override
    public List<Person> searchCardById(Person person) {
        return personMapper.searchCardById(person);
    }
}
