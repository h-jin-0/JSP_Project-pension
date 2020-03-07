package com.cos.reservation.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class User {
	private int id;
	private String userName;
	private String password;
	private String email;
	private String phone;
	private String address;
	private String status;
}
