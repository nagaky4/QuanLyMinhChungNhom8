package com.quypt.pack.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quypt.pack.Repository.MinhChungRepository;
import com.quypt.pack.model.MinhChung;



@Service
public class MinhChungService {

	@Autowired
	private MinhChungRepository mcRepository;
	
	public List<MinhChung> getAllMC()
	{
		List<MinhChung> lst = new ArrayList<MinhChung>();
	
		Query q = em.createNativeQuery("select *from minhchung ");
		List<Object> lstobj = (List<Object>) q.getResultList();
		Iterator itr = lstobj.iterator();
		while(itr.hasNext()){
		   Object[] obj = (Object[]) itr.next();
			MinhChung mc = new MinhChung();
		    mc.setMaMC(String.valueOf(obj[0]));  
		    mc.setTenMC(String.valueOf(obj[1]));
		    mc.setNoiDung(String.valueOf(obj[2]));
		    mc.setMaLoaiMC(String.valueOf(obj[3]));
		    mc.setMaCapMC(String.valueOf(obj[4]));
		    mc.setHinhAnhMC(String.valueOf(obj[5]));
		    mc.setHinhAnhMoTa(String.valueOf(obj[6]));
		    lst.add(mc);
		}
		return lst;
	}
	
	@PersistenceContext
	private EntityManager em;
	public MinhChung findOneMC(String id)
	{	
		MinhChung mc = new MinhChung();
		Query q = em.createNativeQuery("select *from minhchung where maMC='"+id+"'");
		List<Object> lstobj = (List<Object>) q.getResultList();
		Iterator itr = lstobj.iterator();
		while(itr.hasNext()){
		   Object[] obj = (Object[]) itr.next();
		   
		    mc.setMaMC(String.valueOf(obj[0]));  
		    mc.setTenMC(String.valueOf(obj[1]));
		    mc.setNoiDung(String.valueOf(obj[2]));
		    mc.setMaLoaiMC(String.valueOf(obj[3]));
		    mc.setMaCapMC(String.valueOf(obj[4]));
		    mc.setHinhAnhMC(String.valueOf(obj[5]));
		    mc.setHinhAnhMoTa(String.valueOf(obj[6]));
		}
		return mc;
	}
	
	public List<MinhChung> findAllcapMC(String id)
	{
		List<MinhChung> lst = new ArrayList<MinhChung>();
		Query q = em.createNativeQuery("select *from minhchung where maCapMC ='"+id+"'");
		List<Object> lstobj = (List<Object>) q.getResultList();
		Iterator itr = lstobj.iterator();
		while(itr.hasNext()){
		   Object[] obj = (Object[]) itr.next();
		   MinhChung mc = new MinhChung();
		    mc.setMaMC(String.valueOf(obj[0]));  
		    mc.setTenMC(String.valueOf(obj[1]));
		    mc.setNoiDung(String.valueOf(obj[2]));
		    mc.setMaLoaiMC(String.valueOf(obj[3]));
		    mc.setMaCapMC(String.valueOf(obj[4]));
		    mc.setHinhAnhMC(String.valueOf(obj[5]));
		    mc.setHinhAnhMoTa(String.valueOf(obj[6]));
		    lst.add(mc);
		}
		return lst;
	}
	
	@Transactional	
	public boolean updateMinhChung(String MaMC,String TenMC,String NoiDung,String MaCapMC, String MaLoaiMC,
			String HinhAnhMoTa,String HinhAnhMC)
	{
		try {
			em.joinTransaction();
			em.createNativeQuery("update minhchung set tenMC='"+TenMC+"' ,noiDung='"+NoiDung+"',"
					+ "maLoaiMC='"+MaLoaiMC+"',maCapMC='"+MaCapMC+"',hinhAnhMC='"+HinhAnhMC+"',hinhAnhMoTa='"+HinhAnhMoTa+"'"
							+ " where maMC='"+MaMC+"' ").executeUpdate();
				
			System.out.println("thêm thành công");
			em.clear();
			return true;
			
		} catch (Exception e) {
			System.out.println("lỗi thêm minh chứng");
			return false;
		}
	}

	@Transactional
	public boolean insertMinhChung(String MaMC,String TenMC,String NoiDung,String MaCapMC, String MaLoaiMC,
			String HinhAnhMoTa,String HinhAnhMC)
	{
		try {
			em.joinTransaction();
		 Query q=	em.createNativeQuery("insert into minhchung(maMC,tenMC,noiDung,maLoaiMC,maCapMC,hinhAnhMC,hinhAnhMoTa) "
					+ "values ('"+MaMC+"','"+TenMC+"','"+NoiDung+"','"+MaLoaiMC+"','"+MaCapMC+"','"+HinhAnhMC+"','"+HinhAnhMoTa+"') ");		
		 q.executeUpdate();
			System.out.println("thêm thành công");
			em.clear();
			return true;
			
		} catch (Exception e) {
			System.out.println("lỗi thêm minh chứng");
			return false;
		}
	}
	
	@Transactional
	public boolean xoaMinhChung(String id)
	{
		try {
			em.joinTransaction();
			em.createNativeQuery("delete from minhchung where maMC='"+id+"'").executeUpdate();
			em.close();
			return true;
		} catch (Exception e) {
			
			return false;
		}
	}
}
