package com.cos.reservation.action.room;

import com.cos.reservation.action.Action;


public class RoomFactory {
	public static Action route(String cmd) {
		if(cmd.equals("room")) {
			return new RoomAction();
		}else if(cmd.equals("roomList")){
			return new RoomListAction();
		}else if(cmd.equals("roomMgt")){
			return new RoomMgtAction();
		}else if(cmd.equals("roomUpdate")){
			return new RoomUpdateAction();
		}else if(cmd.equals("roomAdd")){
			return new RoomAddAction();
		}else if(cmd.equals("about")){
			return new AboutAction();
		}
		return null;
	}
}
