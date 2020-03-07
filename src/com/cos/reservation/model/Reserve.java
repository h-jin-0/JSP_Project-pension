package com.cos.reservation.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Reserve {
	private int id;
	private String start;
	private String end;
	private String roomtype;
	private int adults;
	private int children;
	private String name;
	private String email;
	private String phone;
	private String requirements;
	private String status;
}
