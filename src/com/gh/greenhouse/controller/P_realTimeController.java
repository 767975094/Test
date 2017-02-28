package com.gh.greenhouse.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gh.core.dao.UserDao;
import com.gh.greenhouse.dao.BaseDao;
import com.gh.greenhouse.dao.GreenhouseDao;
import com.gh.greenhouse.dao.ModelBaseDao;

@Controller
@RequestMapping("/display")
public class P_realTimeController {

	@Resource
	private ModelBaseDao mbDao;
	
	
	 //实习信息
		/**
		 * 列表显示模型，分页
		 * @param model
		 * @param pageSize
		 * @param pageNumber
		 * @return
		 */
		@RequestMapping("/realtime/list")
		public String sysadmin_listbase(Model model,
		@RequestParam(value="ps",required=false,defaultValue="5") Integer pageSize,
		@RequestParam(value="pn",required=false,defaultValue="1") Integer pageNumber
		){
			model.addAttribute("pager", mbDao.listByType(0,pageSize, pageNumber));
			 return "plus/realtime/gh_real_time"; 
			/*return "modellibmgr/ctrlcostmodel/list";*/
		}

}
