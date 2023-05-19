package com.kbstar.controller;

import com.kbstar.dto.Sales;
import com.kbstar.service.SalesService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/sales")
public class SalesController {
    String dir = "sales/";
    @Autowired
    SalesService salesService;
    @RequestMapping("")
    public String sales(Model model) throws Exception {
        List<Sales> list = null;
        list = salesService.get();
        log.info("-----------------------------------------------------------------------------");
        log.info(list.toString());

        model.addAttribute("slist", list);
        model.addAttribute("center", dir+"sales");
        return "index";
    };

}
