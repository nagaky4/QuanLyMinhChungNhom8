package com.quypt.pack.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quypt.pack.Repository.CapMinhChungRepository;
import com.quypt.pack.model.CapMinhChung;

@Service
public class CapMinhChungService {

	
	@Autowired
	private CapMinhChungRepository cmcRepository;
	
	@PersistenceContext
	private EntityManager em;
	public List<CapMinhChung> findAllCmC()
	{
		List<CapMinhChung> lst = new ArrayList<CapMinhChung>();
		Query q = em.createNativeQuery("select *from capminhchung");
		List<Object> lstobj = (List<Object>) q.getResultList();
		Iterator itr = lstobj.iterator();
		while(itr.hasNext()){
		   Object[] obj = (Object[]) itr.next();
		   CapMinhChung cmc = new CapMinhChung();
		    cmc.setMaCap(String.valueOf(obj[0]));  
		    cmc.setTenCap(String.valueOf(obj[1]));
		    cmc.setMaLoaiCap(String.valueOf(obj[2]));
		    lst.add(cmc);
		}				
		return lst;
	}

	public List<CapMinhChung> findByNameCLB(String maloaicap)
	{
		List<CapMinhChung> lst = new ArrayList<CapMinhChung>();
		Query q = em.createNativeQuery("select *from capminhchung where maLoaiCap='"+maloaicap+"'");
		List<Object> lstobj = (List<Object>) q.getResultList();
		Iterator itr = lstobj.iterator();
		while(itr.hasNext()){
		   Object[] obj = (Object[]) itr.next();
		   CapMinhChung cmc = new CapMinhChung();
		    cmc.setMaCap(String.valueOf(obj[0]));  
		    cmc.setTenCap(String.valueOf(obj[1]));
		    cmc.setMaLoaiCap(String.valueOf(obj[2]));
		    lst.add(cmc);
		}				
		return lst;
	}
}
