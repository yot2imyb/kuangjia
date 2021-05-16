package cn.gson.kuangjia.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import cn.gson.kuangjia.model.service.XueyuanService;



@Controller
public class XueyuanController {
	@Autowired
	private XueyuanService us;

	@RequestMapping("demo")
	public void demo(Model model) {
		model.addAttribute("users", us.findUsers());
		model.addAttribute("order", us.findAll());
//		model.addAttribute("od", us.findAll1());
	}
	
}
