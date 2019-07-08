package com.spring.mvc;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class Test {
    public static String getCellValue(Cell cell) {
        DecimalFormat def = new DecimalFormat("0.0");
        String string = null;
        if (cell.getCellType() == HSSFCell.CELL_TYPE_STRING) {
            string = cell.getStringCellValue();
        } else if (cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC) {
            string = def.format(cell.getNumericCellValue());

        }else if (cell.getCellType() == HSSFCell.CELL_TYPE_FORMULA) {
            try {
                string = def.format(cell.getNumericCellValue());
            } catch (Exception e) {
                string = "0";
            }
        }else {
            string="";
        }
        return string;
    }
    public static void main(String[] arg) throws Exception {
        File file = new File("E:\\MobileFile\\2019年5月份 全市地方财政收入完成情况（修改上年口径）.xlsx");
        Workbook workbook = WorkbookFactory.create(new FileInputStream(file));
        Sheet sheet = workbook.getSheetAt(0);
        List<Map> list=new ArrayList<>();
        for (int i = 3; i <27; i++) {
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
            map.put("string1",string1);
            map.put("string2",string2);
            list.add(map);
            //System.out.println(map);
        }
        Workbook workbook1=new HSSFWorkbook();
        Sheet sheet1=workbook1.createSheet();
        for(int i=0;i<list.size();i++){
                Map map1=list.get(i);
                Row row1=sheet1.createRow(i);
                row1.createCell(0).setCellValue(map1.get("string1").toString());
                row1.createCell(1).setCellValue(map1.get("string2").toString());
        }
        FileOutputStream fileout=new FileOutputStream("d:\\结果.xls");
        workbook1.write(fileout);
        fileout.close();
        System.out.println("写入完成");
    }
}

