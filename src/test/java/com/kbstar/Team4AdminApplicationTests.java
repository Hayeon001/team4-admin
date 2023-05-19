package com.kbstar;

import com.kbstar.dto.Sales;
import com.kbstar.service.SalesService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
@Slf4j
@SpringBootTest
class Team4AdminApplicationTests {
@Autowired
    SalesService salesService;
    @Test
    void contextLoads() throws Exception {
        List<Sales> list = null;
        list = salesService.get();

        log.info("------------------------------------------------------------------------------------");
        log.info(list.toString());
        log.info("------------------------------------------------------------------------------------");


    }

}
