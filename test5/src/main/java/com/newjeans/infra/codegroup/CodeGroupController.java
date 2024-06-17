package com.newjeans.infra.codegroup;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupService service;
	
	@RequestMapping(value = "/aaaa")	
	public String index(Model model,CodeGroupDto dto) throws Exception{		
		
		model.addAttribute("list", service.selectList());
		return "codegroup/codegroupList"; 
	}
	
	@RequestMapping(value= "/codegroupform")
	public String codegroupform(CodeGroupDto dto,Model model)throws Exception
	{
		model.addAttribute("item", service.selectOne(dto));
		return "codegroup/codegroupform";
	}
	
	@RequestMapping(value="/codegroupInst")
	public String codegroupInst() throws Exception
	{
		return "codegroup/codegroupInst";
	}
	
	@RequestMapping(value="/insert")
	 public String insert(CodeGroupDto dto) throws Exception
	 {
		service.insert(dto);
		return "redirect:/aaaa";
	 }
	@RequestMapping(value="/update" )
	public String update(CodeGroupDto dto)throws Exception
	{
		service.update(dto);
		return "redirect:/aaaa";
	}
	@RequestMapping(value="/updatedele") 
	public String updatedele(CodeGroupDto dto)throws Exception
	{
		service.updatedele(dto);
		
		return "redirect:/aaaa";
	}
//	@RequestMapping(value = "/aaaa")	
//	public ModelAndView index(Model model) throws Exception{				
//		ModelAndView mav = new ModelAndView();				
//		mav.setViewName("aaaa");
//		return mav; 
//	}

}
