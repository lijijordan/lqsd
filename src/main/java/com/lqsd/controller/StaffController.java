package com.lqsd.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lqsd.entity.Staff;
import com.lqsd.service.FacadeService;

/**
 * 
 * @author lijib
 * 
 */
@Controller
@RequestMapping("/staff")
public class StaffController extends BaseFormController{
	
	
	@Autowired
	private FacadeService facadeService;
	
	@RequestMapping(value = "/toList")
	public ModelAndView toList() {
		ModelAndView mv = new ModelAndView("/jsp/staff/list");
		List<Staff> list = facadeService.getStaffs();
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = "/toAdd")
	public ModelAndView toAdd() {
		ModelAndView mv = new ModelAndView("/jsp/staff/add");
		mv.addObject("sites", facadeService.getSites());
		return mv;
	}
	
	@RequestMapping(value = "/toUpdate")
	public ModelAndView toUpdate(String id) {
		ModelAndView mv = new ModelAndView("/jsp/staff/update");
		mv.addObject("sites", facadeService.getSites());
		mv.addObject("staff", facadeService.getStaff(id));
		return mv;
	}
	
	@RequestMapping(value="/del", method=RequestMethod.GET)
	public String del(String id){
		facadeService.removeStaff(id);
		return "redirect: toList" ;
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
    public String add(Staff staff){
		facadeService.saveStaff(staff);
		return "redirect: toList" ;
    }
}
