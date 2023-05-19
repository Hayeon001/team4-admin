package com.kbstar.dto;

import lombok.*;

import java.util.Date;
//import org.springframework.format.annotation.DateTimeFormat;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString

public class Sales {
//    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private int id;
    private int item_id;
    private String cust_id;
    private Date rdate;
}

