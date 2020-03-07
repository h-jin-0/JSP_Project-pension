package com.cos.reservation.action.user;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.reservation.action.Action;
import com.cos.reservation.dao.UserDao;
import com.cos.reservation.model.User;
import com.cos.reservation.utill.Script;

public class UserLoginProcAction implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userName=req.getParameter("userName");
		String password=req.getParameter("password");
		
		String rememberMe=Optional.ofNullable(req.getParameter("rememberMe")).orElse("off");	
			
		UserDao userDao=UserDao.getInstance();
		
		User user=userDao.login(userName,password);
		
		if(rememberMe.equals("on")) {
			Cookie cookie=new Cookie("usernameCookie", userName);
			cookie.setMaxAge(60*60*24*78);
			resp.addCookie(cookie);
		}else {
			Cookie cookie=new Cookie("usernameCookie", "");
			cookie.setMaxAge(0);
			resp.addCookie(cookie);
		}
		
		if(user!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("user", user);
			
			RequestDispatcher dis=req.getRequestDispatcher("/");
			dis.forward(req, resp);
		}else {
			Script.back(resp, "아이디 혹은 비밀번호가 일치하지 않습니다.");
			
		}

	}

}
