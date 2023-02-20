package dao;

import java.util.ArrayList;

import bean.SanPhambean;
import bo.SanPhambo;

public class test {

	public static void main(String[] args) {
		
		// TODO Auto-generated method stub
		SanPhambo spdao = new SanPhambo();
		ArrayList<SanPhambean> ds = spdao.getSanPhamTinhDau();
		for (SanPhambean sp : ds) {
			System.out.println((int)sp.getGia());
		}
	}

}
