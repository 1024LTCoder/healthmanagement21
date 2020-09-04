package com.service.impl;

import com.dao.ManageMapper;
import com.model.pojo.Cards;
import com.model.pojo.CardsNo;
import com.model.pojo.Users;
import com.service.IManageService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ManageServiceImpl implements IManageService {

    @Resource
    private ManageMapper manageMapper;

    /**
     * 查询所有的card对象
     * @param cards
     * @return
     */
    @Override
    public List<Cards> queryAllCards(Cards cards) {
        List<Cards> allCards = manageMapper.findAllCards(cards);
        return allCards;
    }

    /**
     * 查出cardID的最大值
     * @return
     */
    @Override
    public Integer maxCardId() {
        Integer maxCardId = manageMapper.maxCardId();
        return maxCardId;
    }

    /**
     * 插入空白card对象。
     * @param cardsNum
     */
    @Override
    public void addCards(int cardsNum) {
        //调用maxCardID。找到cards最大的ID数
        Integer maxCardId = manageMapper.maxCardId();
        //设置卡片编号头
        String s = "S";
        //创建list和cardsNo对象接收结果
        List<CardsNo> list = new ArrayList<>();
        CardsNo cardsNo = null;

        //循环添加卡片编号
        for (int i = maxCardId+1; i <= maxCardId+cardsNum; i++){
            cardsNo = new CardsNo();
            //使用"%05d"，十进制5位数，不足使用0来补充.
            String format = String.format("%05d",i);
            //拼接卡片编号
            String str = s+format;
            //将卡片编号添加进入类中。
            cardsNo.setCardsNo(str);
            list.add(cardsNo);
        }
        //调用addCards批量添加数据。
        manageMapper.addCards(list);
    }

    /**
     * 通过cardID删除指定的card对象
     * @param cards
     */
    @Override
    @Transactional(rollbackFor=Exception.class)
    public void delCard(Cards cards) {
        manageMapper.delCard(cards);
    }

    /**
     * 显示所有的user对象
     * @return
     */
    @Override
    public List<Users> showUsers() {
        return manageMapper.queryUsers();
    }

    /**
     * 添加user对象
     * @param users
     */
    @Override
    public void addUser(Users users) {
        manageMapper.addUser(users);
    }

    /**
     * 通过userId删除指定的user对象
     * @param users
     */
    @Override
    public void delUserById(Users users) {
        manageMapper.delUserById(users);
    }

    /**
     * 通过userId查询user。
     * @param users
     * @return
     */
    @Override
    public Users queryUserById(Users users) {
        return manageMapper.queryUserById(users);
    }

    /**
     * 通过userId修改user对象
     * @param users
     */
    @Override
    public void updateUserById(Users users) {
        manageMapper.updateUserById(users);
    }
}
