package com.lqsd.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lqsd.commons.NurseType;
import com.lqsd.entity.Nurse;
import com.lqsd.service.FacadeService;

/**
 * 
 * @author lijib
 * 
 */
@Controller
@RequestMapping("/nurse")
public class NurseController extends BaseFormController{
	
	
	@Autowired
	private FacadeService facadeService;
	
	@RequestMapping(value = "/toList")
	public ModelAndView toList(NurseType type) {
		ModelAndView mv = new ModelAndView("/jsp/nurse/list");
		List<Nurse> list = facadeService.getNurses(type);
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = "/toAdd")
	public ModelAndView toAdd() {
		ModelAndView mv = new ModelAndView("/jsp/nurse/add");
		return mv;
	}
	@RequestMapping(value = "/toUpload")
	public ModelAndView toUpload() {
		ModelAndView mv = new ModelAndView("/jsp/nurse/upload");
		return mv;
	}
	
	@RequestMapping(value = "/toUpdate")
	public ModelAndView toUpdate(String id) {
		ModelAndView mv = new ModelAndView("/jsp/nurse/update");
		mv.addObject("nurse", facadeService.getNurse(id));
		return mv;
	}
	
	@RequestMapping(value="/del", method=RequestMethod.GET)
	public String del(String id){
		facadeService.removeNurse(id);
		return "redirect: toList" ;
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
    public String add(Nurse nurse){
		facadeService.saveNurse(nurse);
		return "redirect: toList" ;
    }
}
