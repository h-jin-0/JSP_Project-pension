package com.cos.reservation.action.reserve;

import com.cos.reservation.action.Action;

public class ReserveFactory {
	public static Action route(String cmd) {
		if(cmd.equals("reserve")) {
			return new ReserveAction();
		}else if(cmd.equals("reserveMgt")) {
			return new ReserveMgtAction();
		}
		return null;
	}
}
