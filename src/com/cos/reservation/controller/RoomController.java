package com.cos.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.reservation.action.Action;

import com.cos.reservation.action.room.RoomFactory;
import com.cos.reservation.db.DBUtill;

@WebServlet("/room")
public class RoomController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// DB test
		DBUtill.getConnection();

		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");

		String cmd = req.getParameter("cmd");
		if (cmd == null)
			cmd = "";

		Action action = RoomFactory.route(cmd);
		action.execute(req, resp);
	}

}
