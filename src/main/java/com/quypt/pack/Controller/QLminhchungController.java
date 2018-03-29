package com.quypt.pack.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quypt.pack.Service.MinhChungService;

@Controller
public class QLminhchungController {
	
	@Autowired
	private MinhChungService mcservice ;
	
	@RequestMapping("/qlminhchung")
	public String qlminhchung(ModelMap mm)
	{
		mm.put("lstmc", mcservice.getAllMC());
		return "QLMinhChung";
	}
}
