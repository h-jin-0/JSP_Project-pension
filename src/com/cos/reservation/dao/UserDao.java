package com.cos.reservation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.reservation.db.DBUtill;
import com.cos.reservation.model.User;

public class UserDao {
	private UserDao() {
	}

	private static UserDao instance = new UserDao();

	public static UserDao getInstance() {
		return instance;
	}

	public int save(String username, String password, String email, String phone, String address, String status) {

		Connection conn = DBUtill.getConnection();
		PreparedStatement pstmt = null;

		try {

			final String SQL = "INSERT INTO user(username, password, email, phone, address, status) VALUES (?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, username);
			pstmt.setString(2, password);
			pstmt.setString(3, email);
			pstmt.setString(4, phone);
			pstmt.setString(5, address);
			pstmt.setString(6, status);

			int result = pstmt.executeUpdate();

			return result;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return -1;
	}

	public User login(String username, String password) {

		Connection conn = DBUtill.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			final String SQL = "SELECT * FROM user WHERE username=? and password=? ";
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, username);
			pstmt.setString(2, password);

			rs = pstmt.executeQuery();

			User user = null;
			if (rs.next()) {
				int id = rs.getInt("id");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String status = rs.getString("status");

				user = User.builder().id(id).userName(username).email(email).phone(phone).address(address)
						.status(status).build();
			}
			return user;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;

	}

	public List<User> findAll() {

		List<User> users = new ArrayList<>();

		Connection conn = DBUtill.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			final String SQL = "SELECT * FROM user";
			pstmt = conn.prepareStatement(SQL);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String username = rs.getString("username");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String status = rs.getString("status");

				// User Builder
				User user = User.builder().id(id).userName(username).email(email).phone(phone).address(address)
						.status(status).build();
				users.add(user);

			}
			return users;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return null;
	}
	
	// update
		public int setStatus(int id) {

			Connection conn = DBUtill.getConnection();
			PreparedStatement pstmt = null;

			try {
				final String SQL = "UPDATE user SET status='false' WHERE id=?";
				pstmt = conn.prepareStatement(SQL);

				pstmt.setInt(1, id);

				int result = pstmt.executeUpdate();

				return result;

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					pstmt.close();
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}

			}
			return -1;

		}
	
	
}
