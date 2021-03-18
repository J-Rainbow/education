package com.baidu.enroll.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baidu.enroll.po.Enroll;
import com.baidu.enroll.service.EnrollService;
import com.baidu.sdynamics.po.Sdynamics;
import com.baidu.user.action.UserAction;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 报名管理
 * @author AUSU
 *
 */
@Controller
@RequestMapping("/enroll")
public class EnrollAction {

	@Resource
	private UserAction userAction;
	@Resource
	private EnrollService enrollService;
	
	/**
	 * 查询报名信息
	 * @param model
	 * @return
	 */
	@RequestMapping("/goEnroll_list")
	public String goEnroll_list(Model model,Integer pageNum){
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		if(pageNum == null){
			pageNum=1;
		}
		PageHelper.startPage(pageNum,13);
		List<Enroll> enroll = enrollService.queryEnroll();
		PageInfo<Enroll> info = new PageInfo<Enroll>(enroll);
		model.addAttribute("enroll", info.getList());
		model.addAttribute("info", info);
		return "manager/enroll_list";
	}
	
	/**
	 * 添加报名信息
	 * @param enroll
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/insertEnroll")
	public int insertEnroll(Enroll enroll){
		int i = enrollService.insertEnroll(enroll);
		return i;
	}
	
	/**
	 * 根据id查询
	 * @param model
	 * @param eid
	 * @return
	 */
	@RequestMapping("/findById/{eid}")
	public String findById(Model model,@PathVariable Integer eid){
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		List<Enroll> enroll = enrollService.findById(eid);
		model.addAttribute("enroll", enroll);
		return "manager/enroll_edit";
	}
	/**
	 * 
	 * @param enroll
	 * @return
	 */
	@RequestMapping("/updateEnoll")
	public String updateEnoll(Enroll enroll){
		int i = enrollService.updateEnoll(enroll);
		return "redirect:/rest/enroll/goEnroll_list";
	}
	
	/**
	 * 删除
	 * @return
	 */
	@RequestMapping("/deleteEnroll/{eid}/{userName}")
	public String deleteEnroll(@PathVariable Integer eid,@PathVariable String userName){
		int i = enrollService.deleteEnroll(eid, userName);
		return "redirect:/rest/enroll/goEnroll_list";
	}
}
