package com.quypt.pack.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quypt.pack.Service.CapMinhChungService;
import com.quypt.pack.Service.TaiKhoanService;

@Controller
public class loginController {

	@Autowired
	private TaiKhoanService tkService;
	@Autowired
	private CapMinhChungService cmcService;
	
	@RequestMapping("/login")
	private String login()
	{		
		return "login";
	}
	
	@PostMapping("/checklogin")
	private String CheckLogin (@RequestParam("user")String user,@RequestParam("pass") String pass,ModelMap mm,HttpSession ss)
	{
		if(tkService.CheckTaiKhoan(user, pass))
		{
			mm.put("listTenKhoa", cmcService.findByNameCLB("LC-001"));
			mm.put("listTenDoanHoi", cmcService.findByNameCLB("LC-002"));
			mm.put("listTenCLB", cmcService.findByNameCLB("LC-003"));
			ss.setAttribute("user", user);
			ss.setMaxInactiveInterval(0);
			return "redirect:/";
		}
		else
		{
			mm.put("errorlogin","Đăng nhập thất bại , vui lòng kiểm tra lại user hoặc pass");
			return "/login" ;
		}
	}
	@GetMapping("/logout")
	public String logout(HttpSession ss)
	{

		ss.removeAttribute("user");
		return "redirect:/";
	}
}
