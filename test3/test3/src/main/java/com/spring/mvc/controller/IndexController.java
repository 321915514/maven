package com.spring.mvc.controller;

import com.spring.mvc.service.IndexService;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/index")
public class IndexController {
    @Autowired
    private IndexService indexService;


    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) throws IOException, InvalidFormatException {
        List list = IndexService.indexservice();
        model.addAttribute("list", list);

//        List list1 = indexService.SqlList();
//        model.addAttribute("list", list);
        return "index";
    }


    @RequestMapping(value = "/mysql", method = RequestMethod.GET)
    public String mysql(Model model) throws IOException, InvalidFormatException {
//        List list1=indexService.update();
        List list1 = indexService.findall();
        model.addAttribute("list1", list1);
        return "mysql";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request) throws IOException, InvalidFormatException {
        return "login";
    }

    @RequestMapping(value = "/tologin", method = RequestMethod.POST)
    public String tologin(HttpServletRequest request,Model model) throws IOException, InvalidFormatException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean b = indexService.findlist(username, password);

        if (b &&  username!="" && password!="" ) {
            return "redirect:/index/index";
        } else {
            String str="用户名或密码错误";
            model.addAttribute("msg",str);
            return "login";

        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() throws IOException, InvalidFormatException {
        return "register";
    }

//    @RequestMapping(value = "/toregister", method = RequestMethod.GET)
//    public String toregister() throws IOException, InvalidFormatException {
//        return "toregister";
//    }


    @RequestMapping(value = "/toregister", method = RequestMethod.POST)
    public String toregister(HttpServletRequest request, Model model) throws IOException, InvalidFormatException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String sex1 = request.getParameter("sex");
        Integer sex=Integer.parseInt(sex1);
        System.out.println(username+"|"+password+"|"+sex);
        boolean b=indexService.findByName(username);
        System.out.println(b);
        if(!b){
//            JSOnbject jsonObject=new JSObject();
            String string="注册成功";
            indexService.insert(username,password,sex);
            model.addAttribute("str",string);
//            map.put("msg1",string);
//            return new ModelAndView("register",string,string);
        }else{
//            return "registerfail";
            String string="用户名以存在或为空";
//            map.put("msg",string);
            model.addAttribute("str",string);
        }
        return "redirect:/index/register";
    }
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delete(HttpServletRequest request) throws IOException, InvalidFormatException {
        String id=request.getParameter("id");
        System.out.println(id);
        indexService.DeleteList(Integer.parseInt(id));
        return "redirect:/index/mysql";
    }
    @RequestMapping(value = "/select", method = RequestMethod.GET)
    public  String select(HttpServletRequest request,Model model) throws IOException, InvalidFormatException {
        String id=request.getParameter("id");
        System.out.println(id);
        List list=indexService.SelectList(Integer.parseInt(id));
        model.addAttribute("list",list);
        return "show";
    }
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(HttpServletRequest request,Model model) throws IOException, InvalidFormatException {
        request.setCharacterEncoding("utf-8");
        String id1=request.getParameter("id");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String sex1=request.getParameter("sex");
        System.out.println(id1+"|"+username+"|"+password+"|"+sex1);
         Integer id=Integer.parseInt(id1);
        Integer sex=Integer.parseInt(sex1);
        System.out.println(id);
         if(indexService.UpdateList(id,username,password,sex)>0){
         System.out.println("ok");
         }
        return "redirect:/index/mysql";
    }
    @RequestMapping(value = "/selectList", method = RequestMethod.GET)
    public  String selectList(HttpServletRequest request,Model model) throws IOException, InvalidFormatException {
        String id=request.getParameter("id");
        List list=indexService.updateselectList(Integer.parseInt(id));
        System.out.println(list);
        model.addAttribute("list",list);
        return "edit";
    }
    @RequestMapping(value = "/book", method = RequestMethod.GET)
    public String book(Model model) throws IOException, InvalidFormatException {
//        List list1=indexService.update();
        List list = indexService.findbookall();
        model.addAttribute("list", list);
        return "book";
    }
    @RequestMapping(value = "/selectListbook", method = RequestMethod.GET)
    public  String selectListbook(HttpServletRequest request,Model model) throws IOException, InvalidFormatException {
        String b_id=request.getParameter("b_id");
        System.out.println(b_id);
        List list=indexService.updateselectbookList(b_id);
        System.out.println(list);
        model.addAttribute("list",list);
        return "editbook";
    }



    @RequestMapping(value = "/updatebook", method = RequestMethod.POST)
    public String updatebook(HttpServletRequest request,Model model) throws IOException, InvalidFormatException {
        request.setCharacterEncoding("utf-8");
        String b_id=request.getParameter("b_id");
        String b_name=request.getParameter("b_name");
        String b_author=request.getParameter("b_author");
        String b_pub=request.getParameter("b_pub");
        String b_record=request.getParameter("b_record");
        System.out.println(b_author+"|"+b_name+"|"+b_record);
//        System.out.println(indexService.UpdatebList(b_id,b_name,b_author,b_pub,b_record));
        if(indexService.UpdatebList(b_id,b_name,b_author,b_pub,b_record)>0){
            System.out.println("ok");
        }
        return "redirect:/index/book";
    }
    @RequestMapping(value="/bookselect",method= RequestMethod. GET)
    public String bookselect(HttpServletRequest request, Model model){
        String b_id=request.getParameter("b_id");
        Map map=indexService.findById(b_id);
        model.addAttribute("book",map);
        return "b_select";


    }



    @RequestMapping(value = "/addbook", method = RequestMethod.GET)
    public String addbook(){
        return "addbook";
    }
    @RequestMapping(value = "/addbookSave", method = RequestMethod.POST)
    public String addbookSave (HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String b_id = request.getParameter("b_id");
        String b_name = request.getParameter("b_name");
        String b_author = request.getParameter("b_author");
        String b_pub = request.getParameter("b_pub");
        String b_record=request.getParameter("b_record");
        System.out.println("|"+b_name+"|"+b_author+"|"+b_pub);
        indexService.insertbook(b_name,b_author,b_pub,b_record);
//        model.addAttribute("message","增加成功");
        return"redirect:/index/book";
    }

    @RequestMapping(value = "/b_delete", method = RequestMethod.GET)
    public String b_delete(HttpServletRequest request) {
        String b_id = request.getParameter("b_id");
        System.out.println("b_id" + b_id);
        boolean b = indexService.b_deleteByID(b_id);
        if (b) {
            return "redirect:/index/book";
        }else {
            return "login";
        }
    }




}










