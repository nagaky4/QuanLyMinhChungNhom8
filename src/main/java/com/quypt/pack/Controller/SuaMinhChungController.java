package com.quypt.pack.Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quypt.pack.Service.CapMinhChungService;
import com.quypt.pack.Service.MinhChungService;
import com.quypt.pack.model.MinhChung;

@Controller
public class SuaMinhChungController {
	
	@Autowired
	private MinhChungService mcService;
	
	@Autowired
	private CapMinhChungService cmcService;
	@GetMapping("/suaminhchung")
	public String showSuaMinhChung(@RequestParam(value="ID") String ID,ModelMap mm)
	{		
		mm.put("mc", mcService.findOneMC(ID));
		mm.put("lstcmc", cmcService.findAllCmC());
		return "SuaMinhChung";
	}
	
	@PostMapping("/suaMC")
	public String suaMinhChung(@RequestParam("maMC") String maMC,@RequestParam("TenMC") String TenMC,
			@RequestParam("NoiDung") String NoiDung,@RequestParam("MaCapMC") String MaCapMC,
			@RequestParam("MaLoaiMC") String MaLoaiMC,@RequestParam("HinhAnhMoTa") String HinhAnhMoTa,
			@RequestParam("HinhAnhMC") String HinhAnhMC)
	{

		if(mcService.updateMinhChung(maMC,TenMC,NoiDung,MaCapMC,MaLoaiMC,HinhAnhMoTa,HinhAnhMC))
		{
			return "redirect:/qlminhchung";
		}
		else
		{
			return "redirect:/errorpage";
		}
	}
	
	@GetMapping("/xoa")
	public String xoaMinhChung(@RequestParam("ID") String id)
	{
		if(mcService.xoaMinhChung(id))
		{
			return "redirect:/qlminhchung";
		}
		else
			return "redirect:/errorpage";
	}
}
