package com.kbstar.service;

import com.kbstar.dto.Sales;
import com.kbstar.frame.KBService;
import com.kbstar.mapper.SalesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SalesService implements KBService<Integer, Sales> {
    @Autowired
    SalesMapper mapper;

    @Override
    public void register(Sales sales) throws Exception {
        mapper.insert(sales);
    }

    @Override
    public void remove(Integer s) throws Exception {
        mapper.delete(s);
    }

    @Override
    public void modify(Sales sales) throws Exception {
        mapper.update(sales);
    }

    @Override
    public Sales get(Integer s) throws Exception {
        return mapper.select(s);
    }

    @Override
    public List<Sales> get() throws Exception {
        return mapper.selectall();
    }

}
