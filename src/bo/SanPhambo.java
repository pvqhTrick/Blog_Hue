package bo;

import java.util.ArrayList;

import bean.SanPhambean;
import dao.SanPhamdao;

public class SanPhambo {
	SanPhamdao spdao = new SanPhamdao();
	
	public ArrayList<SanPhambean> getSanPham() {
		ArrayList<SanPhambean> ds = spdao.getSanPham();
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamMam() {
		ArrayList<SanPhambean> ds = spdao.getSanPhamMam();
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamTramHuong() {
		ArrayList<SanPhambean> ds = spdao.getSanPhamTramHuong();
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamTinhDau() {
		ArrayList<SanPhambean> ds = spdao.getSanPhamTinhDau();
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamTra() {
		ArrayList<SanPhambean> ds = spdao.getSanPhamTra();
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamCha() {
		ArrayList<SanPhambean> ds = spdao.getSanPhamCha();
		return ds;
	}
	public ArrayList<SanPhambean> getSanPhamKeo() {
		ArrayList<SanPhambean> ds = spdao.getSanPhamKeo();
		return ds;
	}
}
