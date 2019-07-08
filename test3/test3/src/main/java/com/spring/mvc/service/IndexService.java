package com.spring.mvc.service;

import com.spring.mvc.controller.IndexController;
import com.spring.mvc.dao.FindList;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.spring.mvc.Test.getCellValue;
@Service
public class IndexService {
    @Autowired
    private FindList findList;
    @Autowired
    private IndexController tologin;
    public static List indexservice() throws IOException, InvalidFormatException {
        File file = new File("C:\\Users\\JSJSYS\\Documents\\Tencent Files\\321915514\\FileRecv\\2019年5月份 全市地方财政收入完成情况（修改上年口径）.xlsx");
        Workbook workbook = WorkbookFactory.create(new FileInputStream(file));
        Sheet sheet = workbook.getSheetAt(0);
        List<Map> list = new ArrayList<>();
        for (int i = 3; i < 27; i++) {
            Row row = sheet.getRow(i);
            String string1 = getCellValue(row.getCell(0));
            String string2 = getCellValue(row.getCell(1));
            String string3 = getCellValue(row.getCell(2));
            String string4 = getCellValue(row.getCell(3));
            String string5 = getCellValue(row.getCell(4));
            String string6 = getCellValue(row.getCell(5));
            String string7 = getCellValue(row.getCell(6));
            String string8 = getCellValue(row.getCell(7));
            //System.out.println(string1);
            Map map = new HashMap();
            map.put("string1", string1);
            map.put("string2", string2);
            map.put("string3", string3);
            map.put("string4", string4);
            map.put("string5", string5);
            map.put("string6", string6);
            map.put("string7", string7);
            map.put("string8", string8);

            list.add(map);
        }
        return list;
    }
    public List findall(){
        return findList.findall();
    }
    public boolean  findlist(String username,String password){
        Map map =new HashMap();
        map.put("username",username);
        map.put("password" ,password);
        return findList.SqlList(map).size()>0;
    }

    public int insert(String username, String password, int sex){
        Map map =new HashMap();
        map.put("username",username);
        map.put("password" ,password);
        map.put("sex",sex);
        System.out.println(map);
//        if (map.get("username")==""||map.get("password")==""){
//            return 0;
//        }else {
        return findList.InsertSql(map);
//        }
    }

public int  UpdateList(int id,String username,String password,int sex) {
        Map map=new HashMap();
        map.put("id",id);
        map.put("username",username);
        map.put("password",password);
        map.put("sex",sex);
        return findList.update(map);
    }
    public int DeleteList(int id) {
        return findList.delete(id);
    }
    public List SelectList(int id) {

        return findList.select(id);
    }
    public List updateselectList(int id) {
        return findList.updateList(id);

    }

    public boolean findByName(String username) {
        Map map =new HashMap();
        map.put("username",username);
        return findList.login_username(map).size()>0;
    }
    public List findbookall(){
        return findList.findball();
    }
    public List updateselectbookList(String b_id) {
        return findList.updatebList(b_id);

    }
    public int  UpdatebList(String b_id,String b_name,String b_author,String b_pub,String b_record) {
        Map map=new HashMap();
        map.put("b_id",b_id);
        map.put("b_name",b_name);
        map.put("b_author",b_author);
        map.put("b_pub",b_pub);
        map.put("b_record",b_record);
        return findList.updateb(map);
    }
    public Map findById(String b_id) {
        Map map=new HashMap();
        map.put("b_id",b_id);
        return findList.findById(map);
    }

    public void insertbook( String b_name, String b_author, String b_pub,String b_record) {
        Map map =new HashMap();
//        map.put("b_id",b_id);
        map.put("b_name", b_name);
        map.put("b_author", b_author);
        map.put("b_pub", b_pub);
        map.put("b_record",b_record);
         findList.insertbook(map);
    }

    public boolean b_deleteByID(String b_id) {

        return findList.b_deleteByID(b_id)>0;
    }

}









