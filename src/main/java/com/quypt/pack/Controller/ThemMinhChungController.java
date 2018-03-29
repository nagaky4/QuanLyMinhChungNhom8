package com.quypt.pack.Controller;

import java.awt.color.CMMException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quypt.pack.Service.CapMinhChungService;
import com.quypt.pack.Service.MinhChungService;
import com.quypt.pack.model.MinhChung;

@Controller
public class ThemMinhChungController {
	
	@Autowired
	private CapMinhChungService cmcService;
	
	@Autowired
	private MinhChungService mcService;
	
	@GetMapping("/themminhchung")
	public String showTrangThemMinhChung(ModelMap mm)
	{
		mm.put("lstcmc", cmcService.findAllCmC());		
		return "ThemMinhChung";
	}
	
	@PostMapping("/themMC")
	public String ThemMinhChungMoi(@RequestParam("MaMC") String maMC,@RequestParam("TenMC") String TenMC,
			@RequestParam("NoiDung") String NoiDung,@RequestParam("MaCapMC") String MaCapMC,
			@RequestParam("MaLoaiMC") String MaLoaiMC,@RequestParam("HinhAnhMoTa") String HinhAnhMoTa,
			@RequestParam("HinhAnhMC") String HinhAnhMC)
	{
		MinhChung mc = new MinhChung();
		mc.setMaMC(maMC);
		mc.setTenMC(TenMC);
		mc.setNoiDung(NoiDung);
		mc.setMaCapMC(MaCapMC);
		mc.setMaLoaiMC(MaLoaiMC);
		mc.setHinhAnhMoTa(HinhAnhMoTa);
		mc.setHinhAnhMC(HinhAnhMC);
		if(mcService.insertMinhChung(maMC,TenMC,NoiDung,MaCapMC,MaLoaiMC,HinhAnhMoTa,HinhAnhMC))
		{
			return "redirect:/qlminhchung";
		}
		else
		{
			return "redirect:/errorpage";
		}
	}
}
