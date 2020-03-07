package com.cos.reservation.action.user;

import com.cos.reservation.action.Action;

public class UserFactory {
	public static Action route(String cmd) {
	
		if(cmd.equals("login")) {
			return new UserLoginAction();
		}else if(cmd.equals("join")){
			return new UserJoinAction();
		}else if(cmd.equals("userMgt")){
			return new UserMgtAction();
		}else if(cmd.equals("logout")){
			return new UserLogoutAction();
		}else if(cmd.equals("joinProc")){
			return new UserJoinProcAction();
		}else if(cmd.equals("loginProc")){
			return new UserLoginProcAction();
		}else if(cmd.equals("setStatus")){
			return new UserSetStatusAction();
		}
		
		
		return null;
	}
}