package com.quypt.pack.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quypt.pack.Service.MinhChungService;

@Controller
public class MinhChungController {
	
	@Autowired
	private MinhChungService mcService;

	@GetMapping("/cauLacBo")
	public String minhchung(@RequestParam("id") String id,ModelMap mm)
	{
		mm.put("lstmc", mcService.findAllcapMC(id));
		return "minhchung";
	}
}
