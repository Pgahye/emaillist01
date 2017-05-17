package com.jx372.emillist.dao.test;

import java.util.List;

import com.jx372.emaillist.dao.EmailListDao;
import com.jx372.emaillist.vo.EmailListVo;

public class EmailListDaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	
		//insertTest();
		getListTest();

	}
	public static void getListTest(){
		
		EmailListDao dao=new EmailListDao();
		
		List<EmailListVo> list=dao.getList();
		
		for(EmailListVo vo : list){
			System.out.println(vo);
			
		}
		
	}
	
	public static void insertTest(){
		
		EmailListVo vo=new EmailListVo();
		
		vo.setFirstName("둘");
		vo.setLastName("리");
		vo.setEmail("dooly @ gmail.com ");
		EmailListDao dao=new EmailListDao();
		
		dao.insert(vo);
		
		
		
	}

}
