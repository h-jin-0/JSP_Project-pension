package com.cos.reservation.action.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.reservation.action.Action;
import com.cos.reservation.dao.UserDao;
import com.cos.reservation.model.User;

public class UserMgtAction implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		UserDao userDao = UserDao.getInstance();
		List<User> users = userDao.findAll();

		req.setAttribute("users", users);

		RequestDispatcher dis = req.getRequestDispatcher("/user/userMgt.jsp");
		dis.forward(req, resp);
	}

}
