package bean;

public class SanPhambean {
	private String MaSP;
	private String TenSP;
	private String AnhSP;
	private double Gia;
	private int SoLuong;
	public SanPhambean() {
		
	}
	public SanPhambean(String maSP, String tenSP, String anhSP, double gia, int soLuong) {
		super();
		MaSP = maSP;
		TenSP = tenSP;
		AnhSP = anhSP;
		Gia = gia;
		SoLuong = soLuong;
	}
	public String getMaSP() {
		return MaSP;
	}
	public void setMaSP(String maSP) {
		MaSP = maSP;
	}
	public String getTenSP() {
		return TenSP;
	}
	public void setTenSP(String tenSP) {
		TenSP = tenSP;
	}
	public String getAnhSP() {
		return AnhSP;
	}
	public void setAnhSP(String anhSP) {
		AnhSP = anhSP;
	}
	public double getGia() {
		return Gia;
	}
	public void setGia(double gia) {
		Gia = gia;
	}
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}
	@Override
	public String toString() {
		return "SanPhambean [MaSP=" + MaSP + ", TenSP=" + TenSP + ", AnhSP=" + AnhSP + ", Gia=" + Gia + ", SoLuong="
				+ SoLuong + "]";
	}
	
	
}
