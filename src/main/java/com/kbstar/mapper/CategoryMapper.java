package com.kbstar.mapper;

import com.kbstar.dto.Category;
import com.kbstar.frame.KBMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface CategoryMapper extends KBMapper<Integer, Category> {
}
