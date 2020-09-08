package com.controller;

import com.model.pojo.Item;
import com.service.IItemsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/items")
public class ItemsController {

    @Resource
    private IItemsService iItemsService;

    ModelAndView mv = new ModelAndView();

    @RequestMapping("/toFindItemsList")
    public ModelAndView toFindItemsList(Item item){
        List<Item> itemList = iItemsService.findItemsList(item);
        mv.addObject("itemList",itemList);
        mv.setViewName("items/items_new");
        return mv;
    }

    @RequestMapping("/toAddItems")
    public ModelAndView toAddItems(){
        mv.setViewName("items/items_new");
        return mv;
    }

    @RequestMapping("/doAddItems")
    public String doAddItems(Item item){
        iItemsService.addItems(item);
        return "redirect:/items/toAddItems";
    }
}
