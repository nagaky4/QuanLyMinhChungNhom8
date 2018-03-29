package com.quypt.pack.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quypt.pack.Repository.CkeditorRipository;
import com.quypt.pack.model.CKEtitor;

@Service
public class CkEditorService {

	@Autowired
	private CkeditorRipository ckeditorRipository;
	
	public List<CKEtitor> mydata()
	{

		List<CKEtitor> lst = new ArrayList<CKEtitor>();
		for (CKEtitor ckEtitor : ckeditorRipository.findAll()) {
			lst.add(ckEtitor);
		}		
		return lst ;
	}
	public Optional<CKEtitor> findone(int id)
	{
		return ckeditorRipository.findById(id);
	}
	
	public void update(CKEtitor ckeditor) {
		ckeditorRipository.save(ckeditor);
	}
}
