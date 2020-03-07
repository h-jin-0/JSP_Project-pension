package com.cos.reservation.action.user;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.reservation.action.Action;
import com.cos.reservation.dao.UserDao;
import com.cos.reservation.dto.UserMgtDto;
import com.google.gson.Gson;

public class UserSetStatusAction implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		BufferedReader br=req.getReader();
		String responseData=br.readLine();
		System.out.println("responseData : "+responseData);
		
		Gson gson=new Gson();
		UserMgtDto userMgtDto=gson.fromJson(responseData, UserMgtDto.class);
		//UserJoinDto.class 어느 형식의 데이터로 바꿀껀지에 적은거
		
		System.out.println("responseData : "+userMgtDto.getId());
		
		UserDao userDao=UserDao.getInstance();
		int result=userDao.setStatus(userMgtDto.getId());

		if(result==1) {//중복된 이름이다
			PrintWriter out = resp.getWriter();
			out.print("ok");
			out.flush();
		
		}else {
			PrintWriter out = resp.getWriter();
			out.print("실패");
			out.flush();
		}
	}

}
