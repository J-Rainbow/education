package com.baidu.tone.action;

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

import com.baidu.tone.po.Tone;
import com.baidu.tone.service.ToneService;
import com.baidu.ttwo.action.TtwoAction;
import com.baidu.ttwo.po.Ttwo;
import com.baidu.ttwo.service.TtwoService;
import com.baidu.user.action.UserAction;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 信息安全教师团队
 * 
 * @author AUSU
 * 
 */
@Controller
@RequestMapping("/tone")
public class ToneAction {

	@Resource
	private UserAction userAction;
	@Resource
	private ToneService toneService;
	@Resource
	private TtwoService ttwoService;

	/**
	 * 查询
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/goTone_list")
	public String goTone_list(Model model, Integer pageNum) {
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		if (pageNum == null) {
			pageNum = 1;
		}
		PageHelper.startPage(pageNum, 13);
		List<Tone> tone = toneService.queryTone();
		PageInfo<Tone> info = new PageInfo<Tone>(tone);
		model.addAttribute("tone", info.getList());
		model.addAttribute("info", info);
		return "manager/teacher_one_list";
	}

	/**
	 * 到添加界面
	 * 
	 * @return
	 */
	@RequestMapping("/goToneAdd")
	public String goToneAdd(Model model) {
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		return "manager/teacher_one_add";
	}

	/**
	 * 添加
	 * 
	 * @param Tnewsnamics
	 * @return
	 * @throws IOException
	 * @throws IllegalStateException
	 */
	@RequestMapping("/insertTone")
	public String insertTone(MultipartFile file, ModelMap map, Tone tone)
			throws IOException {

		// 上传成功 将图片的地址写到数据库 保存图片的路径 与 tomcat 保持一致
		String filePath = "D:\\MyEclipse\\workspace\\education\\WebRoot\\upload";
		// 获取原始图片的拓展名
		String originalFilename = file.getOriginalFilename();
		// 新的文件名字，使用uuid随机生成数+原始图片名字，这样不会重复
		String newFileName = UUID.randomUUID() + originalFilename;
		// 封装上传文件位置的全路径，就是硬盘路径+文件名
		File targetFile = new File(filePath, newFileName);
		// 把本地文件上传到已经封装好的文件位置的全路径就是上面的targetFile
		file.transferTo(targetFile);

		tone.setTphoto(newFileName);// 文件名保存到实体类对应属性上

		int i = toneService.insertTone(tone);
		return "redirect:/rest/tone/goTone_list";
	}

	/**
	 * 根据id查询
	 * 
	 * @param model
	 * @param sid
	 * @return
	 */
	@RequestMapping("/findById/{tid}")
	public String findById(Model model, @PathVariable Integer tid) {
		List<Tone> tone = toneService.findById(tid);
		String userName = userAction.userName;
		model.addAttribute("userName", userName);
		model.addAttribute("tone", tone);
		return "manager/teacher_one_edit";
	}

	/**
	 * 修改
	 * 
	 * @param Tnewsnamics
	 * @return
	 * @throws IOException
	 * @throws Exception
	 */
	@RequestMapping("/updateTone")
	public String updateTone(MultipartFile file, Tone tone) throws Exception {
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

			tone.setTphoto(newFileName);// 文件名保存到实体类对应属性上
		}
		int i = toneService.updateTone(tone);
		return "redirect:/rest/tone/goTone_list";

	}

	/**
	 * 删除
	 * 
	 * @param sid
	 * @param userName
	 * @return
	 */
	@RequestMapping("/deleteTone/{tid}/{userName}")
	public String deleteTone(@PathVariable Integer tid,
			@PathVariable String userName) {
		int i = toneService.deleteTone(tid, userName);
		return "redirect:/rest/tone/goTone_list";
	}

	/**
	 * 前台展示数据
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/goFaculty_info")
	public String goFaculty_info(Model model, Integer pageNum) {
		List<Tone> tone = toneService.queryTone();
		List<Ttwo> ttwo = ttwoService.queryTtwo();
		model.addAttribute("tone", tone);
		model.addAttribute("ttwo", ttwo);
		return "Faculty_info";
	}

}
