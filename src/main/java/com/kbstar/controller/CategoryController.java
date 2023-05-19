package com.kbstar.controller;

import com.kbstar.dto.Category;
import com.kbstar.dto.Item;
import com.kbstar.service.CategoryService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    CategoryService categoryService;
    String dir = "category/";

    @RequestMapping("")
    public String all(Model model) throws Exception {
        List<Category> list = null;
        list = categoryService.get();
        log.info(list.get(0).getTopname());
        model.addAttribute("catelist",list);
        model.addAttribute("center",dir+"category");
        return "index";
    }

    @RequestMapping("/addimpl")
    public String addimpl(Model model, Category category) throws Exception {
        categoryService.register(category);
        return "redirect:/category";
    }

}
