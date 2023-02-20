package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.SanPhambean;

public class SanPhamdao {
	Connection conn = null;
	PreparedStatement ps =null;
	
	
	public ArrayList<SanPhambean> getSanPham() {
		ArrayList<SanPhambean> ds = new ArrayList<SanPhambean>();
		 CoSo kn =  new CoSo();
		 kn.KetNoi();
		 String sql = "select * from SanPham ";
		 try {
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String MaSP = rs.getString("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhSP = rs.getString("AnhSP");
				double Gia = rs.getDouble("Gia");
				int SoLuong = rs.getInt("SoLuong");
				ds.add(new SanPhambean(MaSP, TenSP, AnhSP, Gia, SoLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamMam() {
		ArrayList<SanPhambean> ds = new ArrayList<SanPhambean>();
		 CoSo kn =  new CoSo();
		 kn.KetNoi();
		 String sql = "select * from SanPham where LoaiSanPham = N'Mam' ";
		 try {
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String MaSP = rs.getString("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhSP = rs.getString("AnhSP");
				double Gia = rs.getDouble("Gia");
				int SoLuong = rs.getInt("SoLuong");
				ds.add(new SanPhambean(MaSP, TenSP, AnhSP, Gia, SoLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamTramHuong() {
		ArrayList<SanPhambean> ds = new ArrayList<SanPhambean>();
		 CoSo kn =  new CoSo();
		 kn.KetNoi();
		 String sql = "select * from SanPham where LoaiSanPham = N'Tram'";
		 try {
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String MaSP = rs.getString("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhSP = rs.getString("AnhSP");
				double Gia = rs.getDouble("Gia");
				int SoLuong = rs.getInt("SoLuong");
				ds.add(new SanPhambean(MaSP, TenSP, AnhSP, Gia, SoLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamTinhDau() {
		ArrayList<SanPhambean> ds = new ArrayList<SanPhambean>();
		 CoSo kn =  new CoSo();
		 kn.KetNoi();
		 String sql = "select * from SanPham where LoaiSanPham = N'Dau' ";
		 try {
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String MaSP = rs.getString("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhSP = rs.getString("AnhSP");
				double Gia = rs.getDouble("Gia");
				int SoLuong = rs.getInt("SoLuong");
				ds.add(new SanPhambean(MaSP, TenSP, AnhSP, Gia, SoLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamTra() {
		ArrayList<SanPhambean> ds = new ArrayList<SanPhambean>();
		 CoSo kn =  new CoSo();
		 kn.KetNoi();
		 String sql = "select * from SanPham where LoaiSanPham = N'Tra' ";
		 try {
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String MaSP = rs.getString("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhSP = rs.getString("AnhSP");
				double Gia = rs.getDouble("Gia");
				int SoLuong = rs.getInt("SoLuong");
				ds.add( new SanPhambean(MaSP, TenSP, AnhSP, Gia, SoLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamCha() {
		ArrayList<SanPhambean> ds = new ArrayList<SanPhambean>();
		 CoSo kn =  new CoSo();
		 kn.KetNoi();
		 String sql = "select * from SanPham where LoaiSanPham = N'Cha' ";
		 try {
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String MaSP = rs.getString("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhSP = rs.getString("AnhSP");
				double Gia = rs.getDouble("Gia");
				int SoLuong = rs.getInt("SoLuong");
				ds.add( new SanPhambean(MaSP, TenSP, AnhSP, Gia, SoLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamKeo() {
		ArrayList<SanPhambean> ds = new ArrayList<SanPhambean>();
		 CoSo kn =  new CoSo();
		 kn.KetNoi();
		 String sql = "select * from SanPham where LoaiSanPham = N'Keo' ";
		 try {
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String MaSP = rs.getString("MaSP");
				String TenSP = rs.getString("TenSP");
				String AnhSP = rs.getString("AnhSP");
				double Gia = rs.getDouble("Gia");
				int SoLuong = rs.getInt("SoLuong");
				ds.add(new SanPhambean(MaSP, TenSP, AnhSP, Gia, SoLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
	}
}
