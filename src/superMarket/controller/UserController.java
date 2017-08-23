package superMarket.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.sun.org.apache.bcel.internal.generic.RETURN;

import superMarket.pojo.User;
import superMarket.service.IUserService;
import superMarket.util.Page;

@Controller
@RequestMapping("/user")
public class UserController {
	private Logger logger=Logger.getLogger(UserController.class);
	@Autowired
	private IUserService userService;
	
	@RequestMapping("login.html")
	public String login(){
		logger.debug("smbms get login.html");
		return "/admin/login";
	}
	
	
	@RequestMapping(value="doLogin.html",method=RequestMethod.POST,produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Map doLogin(User user,HttpSession session){
		logger.debug("start doLogin");
		User baseUser=userService.findUser(user);
		Map<String, Object> resultMap=new HashMap<String, Object>();
		logger.debug(baseUser.getUserPassword()+" "+user.getUserPassword());
		if(null!=baseUser&&baseUser.getUserPassword().equals(user.getUserPassword())){
			resultMap.put("result","true");
			resultMap.put("info","登录成功!");
			session.setAttribute("loginUser", user);
		}else {
			resultMap.put("result","false");
			resultMap.put("info","登录失败,用户名或者密码不正确!");
		}
		return resultMap;
	}
	@RequestMapping(value="/main.html")
	public String main(HttpSession session){
		return "/admin/frame";
	}
	
	@RequestMapping(value="doLogout.html")
	public String doLogout(User user,HttpSession session){
		logger.debug("start doLogout");
		session.invalidate();
		return "redirect:/user/login.html";
	}
	
	@RequestMapping(value="userList.html")
	public String userList(Model model){
		List<User> users=userService.findUsers(null);
		model.addAttribute("users",users);
		return "/admin/userAdmin";
	}
	
	@RequestMapping(value="userListByPage.html/{pageIndex}")
	public String userListByPage(Model model,@PathVariable("pageIndex") Integer pageIndex){
		Page page=new Page();
		page.setPageIndex(pageIndex);
		if (page.getPageIndex()<=0) {
			page.setPageIndex(1);
		}
		page.setPageSize(5);
		List<User> users=userService.findUsers(null);
		page.setTotalPage(users.size()%page.getPageSize()==0?users.size()/page.getPageSize():users.size()/page.getPageSize()+1);
		page.setCurrentPage(page.getPageIndex());
		model.addAttribute("users",users);
		model.addAttribute("page",page);
		return "/admin/userAdmin";
	}

	
	@RequestMapping(value="userDetail.html/{id}",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public User userAdd(@PathVariable("id") int id,Model model){
		System.out.println("start get userDetail"+id);
		User user=null;
		User paraUser=new User();
		paraUser.setId(id);
		user=userService.findUser(paraUser);
		//return JSON.toJSONString(user);
		return user;
	}
	
	@RequestMapping(value="userAddSave.html",method=RequestMethod.POST)
	public String userAddSave(User user,HttpSession session,HttpServletRequest request,
			@RequestParam(value="a_idPicPath",required=false) MultipartFile attach){
		String idPicPath=null;
		Random rand=new Random();
		if(!attach.isEmpty()){
			//文件保存路径?
			String path=request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");
			//原文件名
			String oldFileName=attach.getOriginalFilename();
			//原文件后缀
			String suffix=oldFileName.substring(oldFileName.indexOf("."));
			int fileSize=500000;
			if(attach.getSize()>fileSize){
				request.setAttribute("uploadFileError", "上传文件超过预定格式");
				return "/admin/reg";
			}else if (suffix.equalsIgnoreCase("jpg")||
					suffix.equalsIgnoreCase("jpeg")||
					suffix.equalsIgnoreCase("png")||
					suffix.equalsIgnoreCase("pneg")) {
				String fileName=System.currentTimeMillis()+rand.nextInt(1000000)+"_personal."+suffix;
				File targetFile=new File(path, fileName);
				if(!targetFile.exists()){
					targetFile.mkdirs();
				}
				try {
					attach.transferTo(targetFile);
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "/admin/reg";
				}
				idPicPath=path+File.separator+fileName;
			}else {
				request.setAttribute("uploadFileError", "上传图片格式不正确");
				return "/admin/reg";
			}
		}
		user.setCreatedBy(((User)session.getAttribute("loginUser")).getId());
		user.setCreationDate(new Date());
		user.setIdPicPath(idPicPath);
		if (userService.addUser(user)) {
			return "redirect:/admin/userList.html";
		}
	return "/admin/reg";
}
}