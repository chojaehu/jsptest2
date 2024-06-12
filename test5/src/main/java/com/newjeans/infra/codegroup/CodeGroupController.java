package com.newjeans.infra.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupService service;
	
	@RequestMapping(value = "/aaaa")	
	public String index(Model model) throws Exception{		
		
		
		model.addAttribute("list", service.selectList());
		return "bbbb"; 
	}
//	@RequestMapping(value = "/aaaa")	
//	public ModelAndView index(Model model) throws Exception{				
//		ModelAndView mav = new ModelAndView();				
//		mav.setViewName("aaaa");
//		return mav; 
//	}

}
