package com.cos.reservation.action.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.reservation.action.Action;
import com.cos.reservation.dao.UserDao;
import com.cos.reservation.utill.Script;

public class UserJoinProcAction implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userName=req.getParameter("userName");
		String password=req.getParameter("password");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		String address=req.getParameter("address");
		String status=req.getParameter("status");
		
		UserDao userdao=UserDao.getInstance();
		
		int result=userdao.save(userName, password, email, phone, address, status);
		
		if (result == 1) {
			RequestDispatcher dis = req.getRequestDispatcher("/");
			dis.forward(req, resp);
		} else {
			Script.back(resp, "회원가입에 실패했습니다.");

		}
	}

}
