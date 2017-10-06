package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connect.DBConnect;
import model.Users;

public class UsersDAO {

	//check username is exist
	public boolean checkUsername(String username){
		
		Connection conn = DBConnect.getConnection();
		String query = "SELECT * FROM users WHERE user_name = ?";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				conn.close();
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
		return false;
	}
	public boolean insertUsers(Users user){
		Connection conn = DBConnect.getConnection();
		String query = "INSERT INTO users VALUES(?,?,?,?)";
		PreparedStatement ps;
		try {
			 ps = conn.prepareStatement(query);
			 ps.setLong(1, user.getUserID());
			 ps.setString(2, user.getUserName());
			 ps.setString(3, user.getUserPass());
			 ps.setBoolean(4, user.getUserRole());
			 int rs = ps.executeUpdate();
			 if(rs != 0){
				 return true;
			 }
			 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
/*	public static void main(String[] args) {
		UsersDAO dao = new UsersDAO();
		Users u = new Users();
		u.setUserID(2);
		u.setUserName("nomore");
		u.setUserPass("abc123");
		u.setUserRole(false);
		System.out.println(dao.insertUsers(u));
		
	}*/
}
