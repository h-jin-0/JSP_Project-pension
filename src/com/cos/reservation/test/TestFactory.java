package com.cos.reservation.test;

import com.cos.reservation.action.Action;

public class TestFactory {
	public static Action route(String cmd) {
		if(cmd.equals("test")) {
			return new test1();

		}
		return null;
	}
}