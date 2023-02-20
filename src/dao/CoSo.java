package dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverAction;
import java.sql.DriverManager;

public class CoSo {
	public static Connection cn;
	public void KetNoi() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("OK da nap Driver");
			String st="jdbc:sqlserver://LAPTOP-IUDRSED8\\DUNG:1433;databaseName=Hue;user=sa;password=7112002";
			cn=DriverManager.getConnection(st);
			System.out.println("da ket noi den csdl Hue");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
	}
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		CoSo cs=new CoSo();
//		cs.KetNoi();
//	}

}
