package org.iclass.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.dto.BookUser;

import mybatis.SqlSessionBean;


public class BookUserDao {	
	// 싱글톤 패턴 정의
	private static BookUserDao dao = new BookUserDao();
	private BookUserDao() {}
	public static BookUserDao getInstance() {
		return dao;
	}
	// login
	public BookUser login(Map<String,String> map)  {
		SqlSession mapperSession = SqlSessionBean.getSession();
		BookUser vo = mapperSession.selectOne("bookuser.login",map);
		mapperSession.close();
		return vo;
	}
	// insert
	public int insert(BookUser dto) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.insert("bookuser.insert",dto);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}
}
