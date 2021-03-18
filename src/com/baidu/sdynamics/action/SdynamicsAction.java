package com.baidu.sdynamics.action;

import java.util.List;

import javax.annotation.Resource;


import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baidu.sdynamics.po.Sdynamics;
import com.baidu.sdynamics.service.SdynamicsService;
import com.baidu.tnews.po.Tnews;
import com.baidu.tnews.service.TnewsService;
import com.baidu.user.action.UserAction;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 学院动态
 * @author AUSU
 *
 */
@Controller
@RequestMapping("/sdynamics")
public class SdynamicsAction {
	
	@Resource
	private UserAction userAction;
	@Resource
	private SdynamicsService sdynamicsService;
	@Resource
	private TnewsService tnewsService;
	
	/**
	 * 查询
	 * @param model
	 * @return
	 */
	@RequestMapping("/goSdy_list")
	public String goSdy_list(Model model,Integer pageNum){
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		if(pageNum == null){
			pageNum=1;
		}
		PageHelper.startPage(pageNum,13);
		List<Sdynamics> sdy = sdynamicsService.querySdy();
		PageInfo<Sdynamics> info = new PageInfo<Sdynamics>(sdy);
		model.addAttribute("sdy", info.getList());
		model.addAttribute("info", info);
		return "manager/stu_dy_list";
	}
	
	/**
	 * 到添加界面
	 * @return
	 */
	@RequestMapping("/goSdyAdd")
	public String goSdyAdd(Model model){
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		return "manager/stu_dy_add";
	}
	
	/**
	 * 添加
	 * @param sdynamics
	 * @return
	 */
	@RequestMapping("/insertSdy")
	public String insertSdy(Sdynamics sdynamics){
		int i = sdynamicsService.insertSdy(sdynamics);
		return "redirect:/rest/sdynamics/goSdy_list";
	}
	
	/**
	 * 根据id查询
	 * @param model
	 * @param sid
	 * @return
	 */
	@RequestMapping("/findById/{sid}")
	public String findById(Model model,@PathVariable Integer sid){
		List<Sdynamics> sdy = sdynamicsService.findById(sid);
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		model.addAttribute("sdy", sdy);
		return "manager/stu_dy_edit";
	}
	
	/**
	 * 修改
	 * @param sdynamics
	 * @return
	 */
	@RequestMapping("/updateSdy")
	public String updateSdy(Sdynamics sdynamics){
		int i = sdynamicsService.updateSdy(sdynamics);
		return "redirect:/rest/sdynamics/goSdy_list";
		
	}
	
	/**
	 * 删除
	 * @param sid
	 * @param userName
	 * @return
	 */
	@RequestMapping("/deleteSdy/{sid}/{userName}")
	public String deleteSdy(@PathVariable Integer sid,@PathVariable String userName){
		int i = sdynamicsService.deleteSdy(sid, userName);
		return "redirect:/rest/sdynamics/goSdy_list";
	}
	
	/**
	 * 前台展示数据
	 * @param model
	 * @return
	 */
	
	@RequestMapping("/goNews")
	public String goNews(Model model,Integer pageNum){
		if(pageNum == null){
			pageNum=1;
		}
		PageHelper.startPage(pageNum,12);
		List<Sdynamics> sdy = sdynamicsService.querySdy();
		PageInfo<Sdynamics> info = new PageInfo<Sdynamics>(sdy);
		model.addAttribute("sdy", info.getList());
		model.addAttribute("info", info);
		
		List<Tnews> tnews = tnewsService.queryTnews();
		PageInfo<Tnews> newsInfo = new PageInfo<Tnews>(tnews);
		model.addAttribute("tnews", newsInfo.getList());
		model.addAttribute("newsInfo", newsInfo);
		return "NEWS";
	}
	
	
	/**
	 * 新闻展示页面
	 * @param model
	 * @param sid
	 * @return
	 */
	@RequestMapping("/goNewsMsg/{sid}")
	public String goNewsMsg(Model model,@PathVariable Integer sid){
		List<Sdynamics> sdy = sdynamicsService.findById(sid);
		model.addAttribute("sdy", sdy);
		return "news_msg";
	}
	
}
