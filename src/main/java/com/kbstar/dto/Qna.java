package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString

public class Qna {
    private int id;
    private String title;
    private String content;
    private Date rdate;
    private int q_id;
    private String cust_id;
    private String adm_id;
    private String answer;

    public Qna(int id, String answer, String title, String cust_id, Date rdate){
        this.id = id;
        this.answer = answer;
        this.title = title;
        this.cust_id = cust_id;
        this.rdate = rdate;
    }

}
