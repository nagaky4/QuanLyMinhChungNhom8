package com.quypt.pack.Service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quypt.pack.Repository.TaiKhoanRepository;
import com.quypt.pack.model.TaiKhoan;

@Service
public class TaiKhoanService {

	@Autowired
	private TaiKhoanRepository tkRepository;
	
	@PersistenceContext
	private EntityManager em;
	public boolean CheckTaiKhoan(String user,String pass)
	{
		Query q = em.createNativeQuery("select * from taikhoan where userName='"+user+"' and passWord='"+pass+"' ");
		List<TaiKhoan> lst = (List<TaiKhoan>) q.getResultList();
		if(!lst.isEmpty())
		{
			return true;
		}
		return false;
	}
}
