package com.lqsd.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lqsd.entity.Site;
import com.lqsd.service.FacadeService;

/**
 * 
 * @author lijib
 * 
 */
@Controller
@RequestMapping("/site")
public class SiteController extends BaseFormController{
	
	
	@Autowired
	private FacadeService facadeService;
	
	@RequestMapping(value = "/toList")
	public ModelAndView toList() {
		ModelAndView mv = new ModelAndView("/jsp/site/list");
		List<Site> list = facadeService.getSites();
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping(value = "/toAdd")
	public ModelAndView toAdd() {
		ModelAndView mv = new ModelAndView("/jsp/site/add");
		mv.addObject("staffs", facadeService.getStaffs());
		return mv;
	}
	
	@RequestMapping(value = "/toUpdate")
	public ModelAndView toUpdate(String id) {
		ModelAndView mv = new ModelAndView("/jsp/site/update");
		mv.addObject("staffs", facadeService.getStaffs());
		mv.addObject("site", facadeService.getSite(id));
		return mv;
	}
	
	@RequestMapping(value="/del", method=RequestMethod.GET)
	public String del(String id){
		facadeService.removeSite(id);
		return "redirect: toList" ;
	}
	
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
    public String add(Site site){
		facadeService.saveSite(site);
		return "redirect: toList" ;
    }
}
