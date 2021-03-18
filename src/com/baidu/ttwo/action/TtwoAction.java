package com.baidu.ttwo.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.baidu.ttwo.po.Ttwo;
import com.baidu.ttwo.service.TtwoService;
import com.baidu.user.action.UserAction;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * RATIONAL 教师团队
 * 
 * @author AUSU
 * 
 */
@Controller
@RequestMapping("/ttwo")
public class TtwoAction {

	@Resource
	private UserAction userAction;
	@Resource
	private TtwoService ttwoService;

	/**
	 * 查询
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/goTwo_list")
	public String goTwo_list(Model model, Integer pageNum) {
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		if (pageNum == null) {
			pageNum = 1;
		}
		PageHelper.startPage(pageNum, 13);
		List<Ttwo> ttwo = ttwoService.queryTtwo();
		PageInfo<Ttwo> info = new PageInfo<Ttwo>(ttwo);
		model.addAttribute("ttwo", info.getList());
		model.addAttribute("info", info);
		return "manager/teacher_two_list";
	}

	/**
	 * 到添加界面
	 * 
	 * @return
	 */
	@RequestMapping("/goTwoAdd")
	public String goTwoAdd(Model model) {
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		return "manager/teacher_two_add";
	}

	/**
	 * 添加
	 * 
	 * @param Tnewsnamics
	 * @return
	 * @throws IOException
	 * @throws IllegalStateException
	 */
	@RequestMapping("/insertTtwo")
	public String insertTtwo(MultipartFile file, ModelMap map, Ttwo ttwo)
			throws Exception {

		// 上传成功 将图片的地址写到数据库 保存图片的路径 与 tomcat 保持一致
		String filePath = "D:\\MyEclipse\\workspace\\education\\WebRoot\\upload";
		// 获取原始图片的拓展名
		String originalFilename = file.getOriginalFilename();
		if (originalFilename != "") {
		// 新的文件名字，使用uuid随机生成数+原始图片名字，这样不会重复
		String newFileName = UUID.randomUUID() + originalFilename;
		// 封装上传文件位置的全路径，就是硬盘路径+文件名
		File targetFile = new File(filePath, newFileName);
		// 把本地文件上传到已经封装好的文件位置的全路径就是上面的targetFile
		file.transferTo(targetFile);

		ttwo.setrphoto(newFileName);// 文件名保存到实体类对应属性上
		}
		int i = ttwoService.insertTtwo(ttwo);
		return "redirect:/rest/ttwo/goTwo_list";
	}

	/**
	 * 根据id查询
	 * 
	 * @param model
	 * @param sid
	 * @return
	 */
	@RequestMapping("/findById/{rid}")
	public String findById(Model model, @PathVariable Integer rid) {
		List<Ttwo> ttwo = ttwoService.findById(rid);
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		model.addAttribute("ttwo", ttwo);
		return "manager/teacher_two_edit";
	}

	/**
	 * 修改
	 * 
	 * @param Tnewsnamics
	 * @return
	 * @throws IOException
	 * @throws Exception
	 */
	@RequestMapping("/updateTtwo")
	public String updateTtwo(MultipartFile file, ModelMap map, Ttwo ttwo)
			throws Exception {

		// 上传成功 将图片的地址写到数据库 保存图片的路径 与 tomcat 保持一致
		String filePath = "D:\\MyEclipse\\workspace\\education\\WebRoot\\upload";
		// 获取原始图片的拓展名
		String originalFilename = file.getOriginalFilename();
		if (originalFilename != "") {
		// 新的文件名字，使用uuid随机生成数+原始图片名字，这样不会重复
		String newFileName = UUID.randomUUID() + originalFilename;
		// 封装上传文件位置的全路径，就是硬盘路径+文件名
		File targetFile = new File(filePath, newFileName);
		// 把本地文件上传到已经封装好的文件位置的全路径就是上面的targetFile
		file.transferTo(targetFile);

		ttwo.setrphoto(newFileName);// 文件名保存到实体类对应属性上
		}
		int i = ttwoService.updateTtwo(ttwo);
		return "redirect:/rest/ttwo/goTwo_list";

	}

	/**
	 * 删除
	 * 
	 * @param sid
	 * @param userName
	 * @return
	 */
	@RequestMapping("/deleteTtwo/{rid}/{userName}")
	public String deleteTtwo(@PathVariable Integer rid,
			@PathVariable String userName) {
		int i = ttwoService.deleteTtwo(rid, userName);
		return "redirect:/rest/ttwo/goTwo_list";
	}

}
