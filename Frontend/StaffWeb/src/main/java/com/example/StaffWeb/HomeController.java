/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.StaffWeb;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;


@Controller
public class HomeController {
      @GetMapping(path = "/home")
    public String home() {
        return "home.jsp";
    }
    
     @GetMapping(path = "/update")
    public String showUpdate() {
        return "Update.jsp";
    }
    
     @PostMapping(path = "/update")
    public String update(@ModelAttribute Staff sta, ModelMap model) {
        RestTemplate invoker = new RestTemplate();
        int staffId = sta.getStaffId();
        Staff object = invoker.getForObject("http://localhost:8088/update/"+ staffId, Staff.class);
        model.addAttribute("staff", object);
        return "UpdateVeiw.jsp";
    }   
    
     @PostMapping(path= "/updatevalue")
    public String userUpdate(@ModelAttribute Staff sta){
        RestTemplate invoker = new RestTemplate();
        
       invoker.postForObject("http://localhost:8088/updater",sta, Staff.class);
        
        return "Update.jsp";
    }
    
     @GetMapping(path= "/register")
    public String showRegister(){
        return "Staff.jsp";
    }
    
    
       @PostMapping(path= "/register")
    public String userRegister(@ModelAttribute Staff sta){
        RestTemplate invoker = new RestTemplate();
        
       invoker.postForObject("http://localhost:8088/register",sta, Staff.class);
        
        return "Staff.jsp";
    }
    
     @GetMapping(path= "/delete")
    public String showDelete(){
        return "Delete.jsp";
    }
    
     @PostMapping(path = "/delete")
    public String delete(@ModelAttribute Staff sta, ModelMap model) {
        RestTemplate invoker = new RestTemplate();
        int staffId = sta.getStaffId();
        Staff object = invoker.getForObject("http://localhost:8088/delete/" + staffId, Staff.class);
        model.addAttribute("staff", object);
        return "Delete.jsp";
    } 
}
