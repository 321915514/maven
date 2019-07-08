package com.spring.mvc.dao;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public interface FindList {
    List<Map>  SqlList(Map map);
    List<Map>  findall();
    int InsertSql(Map map);
    int  update(Map map);
    int  delete(int id);
    List select(int id);
    List<Map> updateList(int id);
    List<Map> login_username(Map map);
    List<Map>  findball();
    List<Map> updatebList(String b_id);
    int  updateb(Map map);
    Map findById(Map map);
    void insertbook(Map map);
    int b_deleteByID(String b_id);








}
