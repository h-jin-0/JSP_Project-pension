package com.cos.reservation.action.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.reservation.action.Action;

public class UserLoginAction implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dis=req.getRequestDispatcher("/user/login.jsp");
		dis.forward(req, resp);
	}

}
