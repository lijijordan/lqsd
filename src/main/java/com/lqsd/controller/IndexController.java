package com.lqsd.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lqsd.commons.Operation;

/**
 * 
 * @author lijib
 * 
 */
@Controller
public class IndexController extends BaseFormController {

	private static List<Operation> LIST ;
	static{
		LIST = new ArrayList<Operation>();
		Operation o1 = new Operation();
		o1.setId(1);
		o1.setName("首页管理");
		LIST.add(o1);
		Operation o2 = new Operation();
		o1.setId(2);
		o1.setName("文章管理");
		LIST.add(o2);
		Operation o3 = new Operation();
		o1.setId(3);
		o1.setName("评论管理");
		LIST.add(o3);
		Operation o4 = new Operation();
		o1.setId(4);
		o1.setName("加盟店管理");
		LIST.add(o4);
		Operation o5 = new Operation();
		o1.setId(5);
		o1.setName("月嫂管理");
		LIST.add(o5);
	}
	
	
	@RequestMapping(value = "/")
	public ModelAndView index(String nav1) {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("navList", LIST);
		if (LIST != null && LIST.size() > 0) {
			if (nav1 == null) {
				mv.addObject("selected", LIST.get(0).getId());
			} else {
				for (Operation opt : LIST) {
					if (opt.getName().startsWith(nav1.split("-")[0])) {
						mv.addObject("selected", opt.getId());
						break;
					}
				}
			}
		}
		return mv;
	}
	/*@RequestMapping(value = "/menus", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public JSONResponse getMenus(String parent, HttpServletRequest request){
		Staff staff = SecurityUtil.getCurrentStaff(request);
		//log.info(staff.getName());
		JSONResponse response = new JSONResponse();
		// 操作权限
		List<Operation> list = operationService.getOperations(parent, staff);
		for (Operation operation : list) {
			operation.setChildren(null);
			operation.setParent(null);
		}
		response.setData(list);
		return response;
	}*/
	
}
