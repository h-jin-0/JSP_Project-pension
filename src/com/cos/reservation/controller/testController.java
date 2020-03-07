package com.cos.reservation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.reservation.action.Action;

import com.cos.reservation.action.reserve.ReserveFactory;
import com.cos.reservation.db.DBUtill;
import com.cos.reservation.test.TestFactory;

@WebServlet("/test")
public class testController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// DB test
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String cmd=req.getParameter("cmd");
		Action action=TestFactory.route(cmd);
		action.execute(req, resp);
		
	}

}