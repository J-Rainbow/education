package com.baidu.tnews.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baidu.sdynamics.po.Sdynamics;
import com.baidu.tnews.po.Tnews;
import com.baidu.tnews.service.TnewsService;
import com.baidu.user.action.UserAction;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 行业新闻
 * @author AUSU
 *
 */
@Controller
@RequestMapping("/tnews")
public class TnewsAction {
	
	@Resource
	private UserAction userAction;
	@Resource
	private TnewsService tnewsService;
	
	/**
	 * 查询
	 * @param model
	 * @return
	 */
	@RequestMapping("/goTnews_list")
	public String goTnews_list(Model model,Integer pageNum){
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		if(pageNum == null){
			pageNum=1;
		}
		PageHelper.startPage(pageNum,13);
		List<Tnews> tnews = tnewsService.queryTnews();
		PageInfo<Tnews> info = new PageInfo<Tnews>(tnews);
		model.addAttribute("tnews", info.getList());
		model.addAttribute("info", info);
		return "manager/trade_news_list";
	}
	
	/**
	 * 到添加界面
	 * @return
	 */
	@RequestMapping("/goTnewsAdd")
	public String goTnewsAdd(Model model){
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		return "manager/trade_news_add";
	}
	
	/**
	 * 添加
	 * @param Tnewsnamics
	 * @return
	 */
	@RequestMapping("/insertTnews")
	public String insertTnews(Tnews tnews){
		int i = tnewsService.insertTnews(tnews);
		return "redirect:/rest/tnews/goTnews_list";
	}
	
	/**
	 * 根据id查询
	 * @param model
	 * @param sid
	 * @return
	 */
	@RequestMapping("/findById/{tid}")
	public String findById(Model model,@PathVariable Integer tid){
		List<Tnews> tnews = tnewsService.findById(tid);
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		model.addAttribute("tnews", tnews);
		return "manager/trade_news_edit";
	}
	
	/**
	 * 修改
	 * @param Tnewsnamics
	 * @return
	 */
	@RequestMapping("/updateTnews")
	public String updateTnews(Tnews tnews){
		int i = tnewsService.updateTnews(tnews);
		return "redirect:/rest/tnews/goTnews_list";
		
	}
	
	/**
	 * 删除
	 * @param sid
	 * @param userName
	 * @return
	 */
	@RequestMapping("/deleteTnews/{tid}/{userName}")
	public String deleteTnews(@PathVariable Integer tid,@PathVariable String userName){
		int i = tnewsService.deleteTnews(tid, userName);
		return "redirect:/rest/tnews/goTnews_list";
	}
	
	/**
	 * 新闻展示页面
	 * @param model
	 * @param sid
	 * @return
	 */
	@RequestMapping("/goNewsMsg/{tid}")
	public String goNewsMsg(Model model,@PathVariable Integer tid){
		List<Tnews> tnews = tnewsService.findById(tid);
		model.addAttribute("tnews", tnews);
		return "news_msg";
	}
}
