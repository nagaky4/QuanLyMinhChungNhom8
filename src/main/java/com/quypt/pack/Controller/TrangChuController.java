package com.quypt.pack.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.quypt.pack.Service.CapMinhChungService;
import com.quypt.pack.Service.CkEditorService;

@Controller
public class TrangChuController {

	@Autowired
	private CapMinhChungService cmcService;
	
	@Autowired
	private CkEditorService ckService;
	@GetMapping("/")
	public String home(ModelMap mm)
	{
		mm.put("listTenKhoa", cmcService.findByNameCLB("LC-001"));
		mm.put("listTenDoanHoi", cmcService.findByNameCLB("LC-002"));
		mm.put("listTenCLB", cmcService.findByNameCLB("LC-003"));
		
		mm.put("data", ckService.mydata());
		return "TrangChu";
	}
}
