package com.kbstar.controller;

import com.kbstar.dto.Qna;
import com.kbstar.service.QnaService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/qna")
public class QnaController {
    @Autowired
    QnaService qnaService;
    String dir = "qna/";

    @RequestMapping("")
    public String all(Model model) throws Exception {
        List<Qna> list = null;
        list = qnaService.get();
//        log.info("list.get(0)={}", list.get(0)); 인덱스 0번 잘 들어 오는지 찾기
        model.addAttribute("qlist",list);
        model.addAttribute("center",dir+"qna");
        return "index";
    }

}
