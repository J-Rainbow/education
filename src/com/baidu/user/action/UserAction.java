package com.baidu.user.action;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baidu.user.po.User;
import com.baidu.user.service.UserService;
import com.baidu.util.VerifyCode;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 登录 注册 用户管理
 * @author AUSU
 *
 */
@Controller
@RequestMapping("/user")
public class UserAction {

	public String userName;
	@Resource
	private UserService userService;
	
	/**
	 * 登录
	 * @param model
	 * @param user
	 * @param request 将获取到的验证码存入session域中
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("/logUser")
	public JSONObject logUser(Model model,User user,HttpServletRequest request) throws ServletException, IOException{
		int i = userService.logUser(user);
        String text = (String) request.getSession().getAttribute("text");
        JSONObject object = new JSONObject();
        object.put("i", i);
        object.put("text", text);
        userName = user.getUname();
		return object;
	}
	
	/**
	 * 注册查询名字
	 * @param uname
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/regUser")
	public int regUser(String uname){
		int i = userService.regUser(uname);
		return i;
	}
	/**
	 * 用户信息管理
	 * @param model
	 * @return
	 * @pageNum 分页
	 */
	@RequestMapping("/goUser_list")
	public String goUser_list(Model model,Integer pageNum){
		model.addAttribute("userName", userName);
		if(pageNum == null){
			pageNum=1;
		}
		PageHelper.startPage(pageNum,13);
		List<User> user = userService.queryUser();
		PageInfo<User> info = new PageInfo<User>(user);
		model.addAttribute("user", info.getList());
		model.addAttribute("info", info);
		return "manager/user_list";
	}
	
	/**
	 * 注册添加
	 * @param model
	 * @param user
	 * @return
	 */
	@RequestMapping("/regInsertUser")
	public String regInsertUser(Model model,User user){
		int i = userService.regInsertUser(user);
		userName = user.getUname();
		model.addAttribute("userName", userName);
		return "redirect:/rest/user/goUser_list"; 
	}
	
	/**
	 * 删除用户
	 * @param uid
	 * @param userName
	 * @return
	 */
	@RequestMapping("/deleteUser/{uid}/{userName}")
	public String deleteUser(@PathVariable Integer uid,@PathVariable String userName){
		int i = userService.deleteUser(uid, userName);
		return"redirect:/rest/user/goUser_list";
	}
	
	/**
	 * 通过id查询
	 * @param model
	 * @param uid
	 * @return
	 */
	@RequestMapping("/findById/{uid}")
	public String findById(Model model,@PathVariable Integer uid){
		List<User> user = userService.findById(uid);
		model.addAttribute("userName", userName);
		model.addAttribute("user", user);
		return "manager/user_edit";
	}
	
	/**
	 * 修改
	 * @param user
	 * @return
	 */
	@RequestMapping("/updateUser")
	public String updateUser(User user){
		int i = userService.updateUser(user);
		return "redirect:/rest/user/goUser_list";
	}
	/**
	 * 验证码
	 * @param model
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("/VerifyCodeServlet")
	public void VerifyCodeServlet(Model model,HttpServletRequest request,HttpServletResponse response) throws IOException{
		//创建对象
        VerifyCode vc = new VerifyCode();
        //获取图片对象
        BufferedImage bi = vc.getImage();
        //获得图片的文本内容
        String text = vc.getText();
        System.out.println(text);
        // 将系统生成的文本内容保存到session中
        request.getSession().setAttribute("text", text);
        //向浏览器输出图片
        vc.output(bi, response.getOutputStream());
	}
}
