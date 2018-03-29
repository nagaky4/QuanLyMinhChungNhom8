package com.quypt.pack.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quypt.pack.Repository.CkeditorRipository;
import com.quypt.pack.Service.CkEditorService;
import com.quypt.pack.model.CKEtitor;

@Controller
public class CkController {
	
	@Autowired
	private CkEditorService ckEditorService;
		
	@PostMapping("/ckeditor")
	public String inssert(@RequestParam("editor1") String ck,ModelMap mm )
	{
		CKEtitor cke = new CKEtitor();
		cke.setId(1);
		cke.setMydata(ck);
		ckEditorService.update(cke);
		System.out.println(ck);		
		return "redirect:/";
	}
}
